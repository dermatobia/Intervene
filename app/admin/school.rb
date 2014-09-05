ActiveAdmin.register School do

  menu priority: 5

  permit_params :district,
                :name,
                :mission,
                :image_url,
                :image_upload,
                :website,
                :street1,
                :street2,
                :city,
                :state,
                :work_phone,
                :fax,
                :school_district_id,
                :zip_code

  # Columns of index page
  index do
    column :name
    column :city
    column :state
    column :zip_code
    actions 
  end

  show do |sp|
    attributes_table do
      rows  :id, :district, :name, :mission, :image, :image_upload, :website,
            :street1, :street2, :city, :state, :zip_code, 
            :work_phone, :fax, :school_district_id
    end
  end

  # FILTERS on sidebar
  filter :name
  filter :city
  filter :state
  filter :zip_code
  filter :published
end
