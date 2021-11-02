class Image < ApplicationRecord
  # associations
  belongs_to :note

  # mounts
  mount_uploader :image, ImageUploader
end
