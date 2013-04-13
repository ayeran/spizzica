class Tracking < ActiveRecord::Base
  belongs_to :order
  belongs_to :status
end
