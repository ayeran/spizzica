class Ingredient < ActiveRecord::Base
     has_and_belongs_to_many :items
     has_and_belongs_to_many :sandwiches
     validates :name, :uniqueness => {:case_sensitive => false}

end
