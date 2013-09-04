class Prenotation

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  @@person_max_num = 10
  @@person_min_num = 1
  @@starttime = 1.hour.seconds # nearest time to make the order (in seconds): one can ask the delivery for the time (current_time + @@starttime)
  @@duration = 1.month.seconds # latest time (in seconds) for which the order can be made: one can not ask for deliveries later than (current_time + @@starttime + @@duaration)

  @@default_quantity = 4

 cattr_reader :person_max_num, :person_min_num, :prenot_min_time, :starttime, :duration, :default_quantity



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

   def time_span_hash
     {:start_year=>self.starttime.year,
       :end_year=>self.endtime.year}
   end
   def starttime
    @starttime = Time.now + @@starttime
  end
  def endtime
    @endtime = Time.now + @@starttime + @@duration
  end

  def yearspan
    ((self.starttime.year)..(self.endtime.year))
  end

  def monthspan
    startM = self.starttime.month
    endM = self.endtime.month
    if endM<startM
      endM = endM + 12
    end
    (@@months + @@months[1..-1])[startM..endM]
  end

  def dayspan
    startD = self.starttime.day
    endD = self.endtime.day
    if endD<startD
      endD = endD + 31
    end
    ((0..31).to_a + (1..31).to_a)[startD..endD].uniq
  end

  def hourspan
    hourStart = self.starttime.hour
    hourEnd = [23, shourStart].max
    (hourStart..hourEnd)
  end

  def minspan
    (0..59).step(15)
  end




end
