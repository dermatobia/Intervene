class EditSchoolSystemsDistricts < ActiveRecord::Migration
  def change
    remove_column :school_districts, :zip_code, :int
    add_column :school_districts, :zip_code, :string
    remove_column :school_districts, :phone, :int
    add_column :school_districts, :phone, :string
    remove_column :school_districts, :fax, :int
    add_column :school_districts, :fax, :string

    remove_column :school_systems, :zip_code, :int
    add_column :school_systems, :zip_code, :string
    remove_column :school_systems, :phone, :int
    add_column :school_systems, :phone, :string
    remove_column :school_systems, :fax, :int
    add_column :school_systems, :fax, :string

    remove_column :schools, :zip_code, :int
    add_column :schools, :zip_code, :string
  end
end
