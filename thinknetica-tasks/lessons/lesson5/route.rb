class Route
  attr_accessor :stations_list

  def initialize(first_station, last_station)
    @first_station = first_station
    @last_station = last_station
    @stations_list = [@first_station, @last_station]
  end

  def add_station(station)
    @stations_list.insert(@stations_list.size-1,station) unless @stations_list.include?(station)
  end

  def del_station(station)
    @stations_list.delete(station) if @stations_list.size > 2
  end

end