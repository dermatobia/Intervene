class CreateSchoolDistricts < ActiveRecord::Migration
  def change
    create_table :school_districts do |t|
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
      t.column :school_system_id, :int
      t.timestamps
    end
  end
end
