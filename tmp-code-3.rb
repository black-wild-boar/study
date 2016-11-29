#class Train
#  attr_reader :stations
#end

class Train
  attr_reader :stations
  attr_accessor :route

  def initialize#(current_station)
    @current_station = 0
#    @current_station = current_station
  end

  def current_station
    route.stations#[@current_station]
  end

#  def set_station
#    @
#  end

end

class Station
  def initialize(station)
    @station = station
  end
end

class Route
  @routes = []
  def initialize(fs , ls)
    @fs = fs
    @ls = ls
    @routes = [@fs,@ls]
  end

  def add_station
    @routes.insert(@routes.size-1,@station)
  end
end
