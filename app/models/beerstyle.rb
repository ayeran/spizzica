class Beerstyle < ActiveRecord::Base
    has_and_belongs_to_many :beers

#    validates :name, :uniqueness => true
    validates :name, :uniqueness => {:case_sensitive => false}

end
