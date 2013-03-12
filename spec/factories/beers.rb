# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :beer do
    name "MyString"
    type ""
    taste "MyString"
    strength "9.99"
  end
end
