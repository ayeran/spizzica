class Prenotation

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

 @@person_max_num = 10
 @@person_min_num = 1
 cattr_reader :person_max_num, :person_min_num


  attr_accessor :name, :email, :date, :quantity, :comment, :phone



  validates_presence_of :name, :email, :date, :quantity, :comment, :phone
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates_length_of :comment, :maximum => 500
  validate :quantity,
      :numericality => {:greater_than_or_equal => @@person_min_num,
                        :less_then_or_equal => @@person_max_num}


  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end


  def persisted?
    false
  end
end
