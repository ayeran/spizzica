class Beveragecategory < ActiveRecord::Base
  has_and_belongs_to_many :beverages
end
