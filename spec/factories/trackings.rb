# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tracking do
    order nil
    status nil
    info "MyText"
  end
end
