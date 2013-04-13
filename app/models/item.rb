class Item < ActiveRecord::Base
  has_many :ordercontents
end
