class Ingredient < ActiveRecord::Base
#     has_and_belongs_to_many :items
     has_and_belongs_to_many :sandwiches
     has_and_belongs_to_many :foods
     has_and_belongs_to_many :beverages
     validates :name, :uniqueness => {:case_sensitive => false}
     has_attached_file :ingredientimage, :styles => {:thumb => "50x50>",
                                                     :small => "150x150>",
                                                     :medium => "250x250>"},
                  :url  => "/assets/images/ingredients/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/images/ingredients/:id/:style/:basename.:extension"

  after_save :enroll
  before_destroy :bowout

  private
  def enroll
    item=Item.find_by_name_and_iid("Ingredient",self.id)
    if !(item)
      item=Item.new({:name=>"Ingredient",:iid=>self.id})
      item.save!
    end
  end

  private
  def bowout
    item=Item.find_by_name_and_iid("Ingredient",self.id)
    if item
      item.destroy
    end
  end


public
  def image(arg)
    self.ingredientimage.url(arg)
  end

public
  def imagepath(arg)
    self.ingredientimage.path(arg)
  end
end
