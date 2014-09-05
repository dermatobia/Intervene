class SchoolsController < ApplicationController

  def index
    @schools = School.all 
  end
  
  def new
    @school = School.new
  end

  def create
    @school = School.new(school_params)
    if @school.save
      redirect_to root_url
    end
  end
  
  private 

  def school_params
    params.require(:school_system).
      permit( :name,
              :contact_person,
              :contact_email,
              :street1,
              :street2,
              :city,
              :state,
              :zip_code,
              :phone,
              :fax
        )
  end
  
end