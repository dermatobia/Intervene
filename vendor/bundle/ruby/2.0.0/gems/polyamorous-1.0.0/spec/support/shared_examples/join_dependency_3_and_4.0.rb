shared_examples "Join Dependency on ActiveRecord 3 and 4.0" do
  context 'with symbol joins' do
    subject { new_join_dependency Person, :articles => :comments }

    specify { subject.join_associations.should have(2).associations }
    specify { subject.join_associations.should be_all { |a| a.join_type == Arel::InnerJoin } }
  end

  context 'with has_many :through association' do
    subject { new_join_dependency Person, :authored_article_comments }

    specify { subject.join_associations.should have(1).association }
    specify { subject.join_associations.first.table_name.should eq 'comments' }
  end

  context 'with outer join' do
    subject { new_join_dependency Person, new_join(:articles, :outer) }

    specify { subject.join_associations.should have(1).association }
    specify { subject.join_associations.should be_all { |a| a.join_type == Arel::OuterJoin } }
  end

  context 'with nested outer joins' do
    subject { new_join_dependency Person, new_join(:articles, :outer) => new_join(:comments, :outer) }

    specify { subject.join_associations.should have(2).associations }
    specify { subject.join_associations.should be_all { |a| a.join_type == Arel::OuterJoin } }
  end

  context 'with polymorphic belongs_to join' do
    subject { new_join_dependency Note, new_join(:notable, :inner, Person) }

    specify { subject.join_associations.should have(1).association }
    specify { subject.join_associations.should be_all { |a| a.join_type == Arel::InnerJoin } }
    specify { subject.join_associations.first.table_name.should eq 'people' }

    it 'finds a join association respecting polymorphism' do
      parent = subject.join_base
      reflection = Note.reflect_on_association(:notable)
      subject.find_join_association_respecting_polymorphism(
        reflection, parent, Person
      ).should eq subject.join_associations.first
    end
  end

  context 'with polymorphic belongs_to join and nested symbol join' do
    subject { new_join_dependency Note, new_join(:notable, :inner, Person) => :comments }

    specify { subject.join_associations.should have(2).association }
    specify { subject.join_associations.should be_all { |a| a.join_type == Arel::InnerJoin } }
    specify { subject.join_associations.first.table_name.should eq 'people' }
    specify { subject.join_associations[1].table_name.should eq 'comments' }
  end
end
