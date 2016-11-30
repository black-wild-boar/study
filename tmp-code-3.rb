class Station
  attr_accessor :station_name, :trains
  
  def initialize(station)
    @station = station
    @trains = []
  end

  def add_train(train_number)
    @trains.push(train_number) unless @trains.include?(train_number)
  end

  def show_all_trains
    @trains.each do |train|
    puts @trains[train]
    end    
  end

  def del_train(train_number)
    @trains.delete(train_number)
  end

#?
  def trains_by_type(type)
    @trains.each do |train|
      puts @trains[train] if @trains.include?(type)
    end    
  end
  
  def show_station
    @station
  end    

end

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
    @stations_list.delete(station)
  end

  def show_route
    @stations_list.each do |station|
      puts station.show_station 
    end
  end

end

class Train
  attr_accessor :route, :type

  def initialize(train, type, carriages)
    @train = train
    @type = type
    @carriages = carriages
    @speed = 0
    @current_station = 0
  end

  def speed_change(count)
    @speed = count
  end

  def current_speed
    @speed
  end

  def speed_stop
    @speed = 0
  end 

  def carriages_count
    @carriages
  end

#+1 -1
  def carriages_change(count)
    @carriages += count if (@carriages + count > 0) && @speed == 0
  end

  def current_station
    route.stations_list[@current_station]
    route.stations_list[@current_station].add_train(@train)
  end

  def station_next
    route.stations_list[@current_station+1]
    puts route.stations_list[@current_station+1].show_station
  end

  def station_prev
    route.stations_list[@current_station-1]
    puts route.stations_list[@current_station-1].show_station
  end

end