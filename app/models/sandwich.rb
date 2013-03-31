class Sandwich < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
  validates :name, :uniqueness => {:case_sensitive => false}
end