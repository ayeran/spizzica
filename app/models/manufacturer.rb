class Manufacturer < ActiveRecord::Base
  validates :name, :uniqueness => true
end
