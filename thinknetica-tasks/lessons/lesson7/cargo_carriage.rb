class CargoCarriage < CarriageType
  attr_accessor :busy_volume
    
  def initialize(carriage_number, seats_count, carriage_volume)
    super
    @carriage_volume = carriage_volume
    @busy_volume = 0
  end

  def add_busy_volume(volume)
    @busy_volume = volume
  end

  def show_busy_volume
    @busy_volume
  end

  def show_free_volume
    puts "В вагоне есть #{@carriage_volume-@busy_volume} объем"
  end
end