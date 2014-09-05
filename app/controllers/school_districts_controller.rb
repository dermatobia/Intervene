class SchoolDistrictsController < ApplicationController

  def index
    @school_districts = SchoolDistrict.all 
  end
  
  def new
    @school_district = SchoolDistrict.new
  end

  def create
    @school_distrct = SchoolDistrict.new(school_district_params)
    if @school_district.save
      redirect_to root_url
    end
  end
  
  private 

  def school_district_params
    params.require(:school_district).
      permit( :name,
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
        )
  end
end