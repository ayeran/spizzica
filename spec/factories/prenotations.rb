# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :prenotation do
    name "MyString"
    email "MyString"
    date "2013-09-01"
    phone "MyString"
    comment "MyText"
    quantity 1
  end
end
