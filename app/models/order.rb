class Order < ActiveRecord::Base
  belongs_to :user
  has_many :ordercontents
  has_many :trackings

end
