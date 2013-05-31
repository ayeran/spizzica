# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :beverage do
    name "MyString"
    strength "9.99"
    volume "9.99"
    container_id 1
    description "MyText"
  end
end
