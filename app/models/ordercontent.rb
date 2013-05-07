class Ordercontent < ActiveRecord::Base
  belongs_to :order
  belongs_to :item
  belongs_to :cart
end
