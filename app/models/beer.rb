class Beer < ActiveRecord::Base
  has_and_belongs_to_many :beerstyles
  has_and_belongs_to_many :aromas
  has_and_belongs_to_many :tastes
  has_and_belongs_to_many :foams
  has_and_belongs_to_many :colors
  belongs_to :container
  belongs_to :lid
  belongs_to :manufacturer

  after_save :enroll
  before_destroy :bowout

  accepts_nested_attributes_for :beerstyles

  has_attached_file :imagebeer, :styles => {:thumb => "50x50>",
                                            :small => "150x150>"},
                  :url  => "/assets/images/beers/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/images/beers/:id/:style/:basename.:extension"


  validates :name, :uniqueness => {:case_sensitive => false}

  private
  def enroll
    item=Item.find_by_name_and_iid("Beer",self.id)
    if !(item)
      item=Item.new({:name=>"Beer",:iid=>self.id})
      item.save!
    end
  end

  private
  def bowout
    item=Item.find_by_name_and_iid("Beer",self.id)
    if item
      item.destroy
    end
  end

public
  def item
    return Item.find_by_name_and_iid("Beer",self.id)
  end

public
  def image(arg)
    self.imagebeer.url(arg)
  end

public
  def imagepath(arg)
    self.imagebeer.path(arg)
  end
end
