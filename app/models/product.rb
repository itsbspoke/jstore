class Product < ActiveRecord::Base

  has_many :product_offerings
  has_many :memberships, through: :product_offerings

end
