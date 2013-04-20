class Manufacturer < ActiveRecord::Base
      validates :name, :uniqueness => {:case_sensitive => false}

      belongs_to :country
end
