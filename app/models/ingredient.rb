class Ingredient < ActiveRecord::Base
#     has_and_belongs_to_many :items
     has_and_belongs_to_many :sandwiches
     validates :name, :uniqueness => {:case_sensitive => false}
     has_attached_file :ingredientimage, :styles => {:thumb => "50x50>",
                                                     :small => "150x150>",
                                                     :medium => "250x250>"},
                  :url  => "/assets/images/ingredients/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/images/ingredients/:id/:style/:basename.:extension"

end
