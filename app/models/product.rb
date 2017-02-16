class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  ratyrate_rateable "a", "b", "c"

end
