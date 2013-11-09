class ProductOffering < ActiveRecord::Base
  belongs_to :membership
  belongs_to :product
end
