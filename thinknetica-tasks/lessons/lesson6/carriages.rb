require_relative 'modules/company.rb'

class CarriageType
  include Manufacturer
  attr_accessor :carriage_number
  attr_accessor :carriages_type

  CARRIAGE_NAME_MIN_LENGTH = 1
  
  def initialize(carriage_number)
    @carriage_number = carriage_number
    @carriages_type = self.class#init_carriage
    validation!
  end

  def validation!
    raise "Номер вагона не может быть пустым!" if carriage_number.to_s.length <= CARRIAGE_NAME_MIN_LENGTH
    true
  end

  def valid?
    validation!
  rescue
    false
  end

  def get_train_type
    @carriages_type
  end

  #def init_carriage
  #  0
  #end

end

