class Beer < ActiveRecord::Base
  has_and_belongs_to_many :beerstyles
  has_and_belongs_to_many :aromas
  has_and_belongs_to_many :tastes
  has_and_belongs_to_many :foams
  has_and_belongs_to_many :colors
  has_one :container
  has_one :lid
  has_one :manufacturer 
end
