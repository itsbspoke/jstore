# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    title "MyString"
    condition "MyString"
    price 1
    description "MyText"
  end
end
