class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  ratyrate_rateable "a", "b", "c"

  has_many :reviews

  has_many :favorites
  has_many :fans, :through => :favorites, :source => :user

end
