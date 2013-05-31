class Beverage < ActiveRecord::Base
  belongs_to :container
  belongs_to :beveragecategory
  has_and_belongs_to_many :ingredients
  validates :price, :numericality => true

  after_save :enroll
  before_destroy :bowout

  has_attached_file :imagebeverage,
    :styles => {:thumb => "50x50>", :small => "150x150>", :medium => "250x250>", :large => "450x450>"},
    :url  => "/assets/images/beverages/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/images/beverages/:id/:style/:basename.:extension"

  private
  def enroll
    item=Item.find_or_create_by_name_and_iid("Beverage",self.id)
  end

  private
  def bowout
    item=Item.find_by_name_and_iid("Beverage",self.id)
    if item
      item.destroy
    end
  end

public
  def item
    return Item.find_by_name_and_iid("Beverage",self.id)
  end

public
  def image(arg)
    self.imagebeverage.url(arg)
  end

public
  def imagepath(arg)
   self.imagebeverage.path(arg)
  end
end
