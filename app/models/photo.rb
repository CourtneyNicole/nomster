class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :photos
  mount_uploader :photos, PictureUploader
end
