class Beer < ActiveRecord::Base
  has_and_belongs_to_many :beerstyles
  has_and_belongs_to_many :aromas
  has_and_belongs_to_many :tastes
  has_and_belongs_to_many :foams
  has_and_belongs_to_many :colors
  has_one :container
  has_one :lid
  has_one :manufacturer
  accepts_nested_attributes_for :beerstyles

  has_attached_file :imagebeer, :styles => {:thumb => "50x50>",
                                            :small => "150x150>"}

  validates :name, :uniqueness => {:case_sensitive => false}

end
