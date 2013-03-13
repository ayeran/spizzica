class Beer < ActiveRecord::Base
  has_and_belongs_to_many :beer_styles
  has_many :container
end
