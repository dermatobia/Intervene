class CreateSchoolSystems < ActiveRecord::Migration
  def change
    create_table :school_systems do |t|
      t.column :name, :string
      t.column :contact_person, :string
      t.column :contact_email, :string
      t.column :street1, :string
      t.column :street2, :string
      t.column :city, :string
      t.column :state, :string
      t.column :zip_code, :int
      t.column :phone, :int
      t.column :fax, :int
      t.timestamps
    end
  end
end
