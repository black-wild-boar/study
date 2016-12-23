require_relative 'modules/company.rb'
# require_relative 'modules/validation.rb'

class CarriageType
  include Manufacturer
  # include Validation
  attr_accessor :carriage_number
  attr_accessor :carriages_type
  
  def initialize(carriage_number)
    @carriage_number = carriage_number
    @carriages_type = self.class#init_carriage
    validation!
  end

  def validation!
    raise "Номер вагона не может быть пустым!" if carriage_number.to_s.length <= 0
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

