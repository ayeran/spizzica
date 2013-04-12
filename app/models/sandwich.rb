class Sandwich < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
  validates :name, :uniqueness => {:case_sensitive => false}

  after_save :enroll
  before_destroy :bowout

  private
  def enroll
    item=Item.find_by_name_and_iid("Sandwich",self.id)
    if !(item)
      item=Item.new({:name=>"Sandwich",:iid=>self.id})
      item.save!
    end
  end

  private
  def bowout
    item=Item.find_by_name_and_iid("Sandwich",self.id)
    if item
      item.destroy
    end
  end

public
  def item
    return Item.find_by_name_and_iid("Sandwich",self.id)
  end

end
