class AddImageUploadToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :image_upload, :string
  end
end
