class Product < ActiveRecord::Base

  has_many :product_offerings
  #has_many :memberships, through: :product_offerings
  has_many :communities, through: :product_offerings

  def self.in_user_communities(user)
    []
  end

end
