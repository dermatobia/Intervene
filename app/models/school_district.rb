class SchoolDistrict < ActiveRecord::Base
  belongs_to :school_system
  has_many :schools
end