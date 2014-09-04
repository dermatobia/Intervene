class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.column :district, :string
      t.column :name, :string
      t.column :mission, :string
      t.column :image_url, :string
      t.column :website, :string
      t.column :street1, :string
      t.column :street2, :string
      t.column :city, :string
      t.column :state, :string
      t.column :zip_code, :integer
      t.column :work_phone, :string
      t.column :fax, :string
      t.column :school_district_id, :int
      t.timestamps
    end
  end
end
