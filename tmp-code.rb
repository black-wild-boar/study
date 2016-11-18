#test class create

class Car
#macros for setter && getter methods

#method-setter
#attr_writer :speed
#method-getter
#attr_reader :speed

#method getter&&setter
attr_accessor :speed

attr_reader :engine_volume

  def initialize (speed = 0, engine_volume)
    @speed = speed
    @engine_volume = engine_volume
  end

  def start_engine
    puts "Wroom!"
  end

  def beep
    puts "Beep beep"
  end

  def stop
#use method-setter
    self.speed = 0
  end

  def go
#use method-setter
    self.speed = 50
#    @speed = 50
#invoke method beep
  beep
#    puts "Local speed: #{speed}, instance speed: #{@speed}"
  end

  #def current_speed
  #  @speed
  #end

#method getter
#  def speed
#    @speed
#  end

# def engine_volume
#    @engine_volume
#  end

#method setter
#  def speed=(speed)
#    @speed = speed
#  end

end
