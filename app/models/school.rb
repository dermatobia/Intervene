class School < ActiveRecord::Base
  belongs_to :school_district

  mount_uploader :image_upload, ImageUploader
end