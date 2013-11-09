# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product_offering do
    membership
    product
  end
end
