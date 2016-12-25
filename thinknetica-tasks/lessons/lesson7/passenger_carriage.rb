class PassengerCarriage < CarriageType
  attr_accessor :busy_seats

  def initialize(carriage_number, seats_count, carriage_volume)
    super
    @seats_count = seats_count
    @busy_seats = 0
  end

  def add_seats
    @busy_seats += 1
  end

  def show_free_seats
    puts "В вагоне #{@seats_count-@busy_seats} свободных мест."
  end

end