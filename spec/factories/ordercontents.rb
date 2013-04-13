# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ordercontent do
    order nil
    item nil
    quantity 1
  end
end
