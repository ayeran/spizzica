# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :beer_style do
    name "MyString"
    description "MyText"
    added_by 1
    updated_by 1
  end
end
