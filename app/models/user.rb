class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :favorites
  has_many :favorite_products, :through => :favorites, :source => :product
  
  def is_fan_of?(group)
   favorite_products.include?(group)
  end

  has_many :orders

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews

  ratyrate_rater

  def admin?
    is_admin
  end

end
