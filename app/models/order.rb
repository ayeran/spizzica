class Order < ActiveRecord::Base
  belongs_to :user
  has_many :ordercontents
  has_many :trackings


 def status=(s1)
   t1 = Tracking.new
   t1.order=self
   t1.status=s1
   t1.save!
 end
end
