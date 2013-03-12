# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :beer do
    name "MyString"
    aroma "MyString"
    flavor 1
    foam "MyString"
    color "MyString"
    strength "9.99"
  end
end
