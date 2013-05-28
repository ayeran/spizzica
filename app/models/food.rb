class Food < ActiveRecord::Base
  belongs_to :foodcategory

  validates :name, :uniqueness => {:case_sensitive => false}
  validates :price, :numericality => true


  has_and_belongs_to_many :ingredients
  validates :name, :uniqueness => {:case_sensitive => false}

  after_save :enroll
  before_destroy :bowout

  has_attached_file :imagefood, :styles => {:thumb => "50x50>",
                                            :small => "150x150>",
                                            :medium => "250x250>",
                                            :large => "450x450>"},
                  :url  => "/assets/images/foods/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/images/foods/:id/:style/:basename.:extension"



  private
  def enroll
    item=Item.find_by_name_and_iid("Food",self.id)
    if !(item)
      item=Item.new({:name=>"Food",:iid=>self.id})
      item.save!
    end
  end

  private
  def bowout
    item=Item.find_by_name_and_iid("Food",self.id)
    if item
      item.destroy
    end
  end

public
  def item
    return Item.find_by_name_and_iid("Food",self.id)
  end

public
  def image(arg)
    self.imagefood.url(arg)
  end

public
  def imagepath(arg)
   self.imagefood.path(arg)
  end
end
