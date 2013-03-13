# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :beer do
    name "MyString"
    manufacturer_id 1
    strength "9.99"
    container_id 1
    lid_id 1
  end
end
