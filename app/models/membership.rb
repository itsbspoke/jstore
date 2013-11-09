class Membership < ActiveRecord::Base
  belongs_to :user
  belongs_to :community
  has_many :product_offerings
  has_many :products
end
