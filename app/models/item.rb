class Item < ActiveRecord::Base
  has_many :ordercontents

  def specify
    self.name.classify.constantize.find(self.iid)
  end
end
