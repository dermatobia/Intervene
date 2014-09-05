ActiveAdmin.register SchoolDistrict do

  menu priority: 4

  permit_params :name,
                :contact_person,
                :contact_email,
                :street1,
                :street2,
                :city,
                :state,
                :zip_code,
                :phone,
                :fax,
                :school_system_id

  # Columns of index page
  index do
    column :name
    column :school_system_id
    column :city
    column :state
    column :zip_code
    actions 
  end

  show do |sp|
    attributes_table do
      rows  :id, :name, :contact_person, :contact_email, :street1, :street2, :city,
            :state, :zip_code, :phone, :fax, :school_system_id
    end
  end

  # FILTERS on sidebar
  filter :name
  filter :city
  filter :state
  filter :zip_code
end
