class Lid < ActiveRecord::Base
  validates :name, :uniqueness => true
end
