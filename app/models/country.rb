class Country < ActiveRecord::Base

  has_attached_file :flagimage, :styles => {:thumb => "50x50>", :small => "150x150>"},
      :url  => "/assets/images/countries/:id/:style/:basename.:extension",
      :path => ":rails_root/public/assets/images/countries/:id/:style/:basename.:extension"

end
