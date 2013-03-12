# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :container do
    name "MyString"
    added_by 1
    updated_by 1
  end
end
