class Container < ActiveRecord::Base
  
  validates :name, :uniqueness => true
end
