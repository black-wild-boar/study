class CarriageType
  attr_accessor :carriage_number
  attr_accessor :carriages_type
  
  def initialize(carriage_number)
    @carriage_number = carriage_number
    @carriages_type = self.class#init_carriage
  end

  def get_train_type
    @carriages_type
  end

  #def init_carriage
  #  0
  #end

end

