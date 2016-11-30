class Station
  attr_accessor :station_name, :trains
  
  def initialize(station)
    @station_name = station
    @trains = []
  end

  def add_train(train_number)
    @trains.push(train_number) unless @trains.include?(train_number)
  end

#т.к. attr_accessor => s1.trains
  #def show_all_trains
  #  @trains.each do |train|
  #  puts @trains[train]
  #  end    
  #end

  def del_train(train_number)
    @trains.delete(train_number)
  end

#?
  def trains_by_type(type)
    @trains.each do |train|
      puts @trains[train] if @trains.include?(type)
    end    
  end

#т.к. attr_accessor => s1.station_name  
  #def show_station
  #  @station_name
  #end    

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
    @stations_list.delete(station) if @stations_list.size > 2
  end

#т.к. attr_accessor => r1.station_list
  #def show_route
  #  @stations_list.each do |station|
  #    puts station.show_station 
  #  end
  #end

end

class Train
  attr_accessor :route, :type, :speed

  def initialize(train, type, carriages)
    @train = train
    @type = type # 1 || 2
    @carriages = carriages
    @speed = 0
    @current_station = 0
  end

#т.к. attr_accessor => t1.speed=
  #def speed_change(count)
  #  @speed = count
  #end

#т.к. attr_accessor => t1.speed
  #def current_speed
  #  @speed
  #end

#пусть будет, хотя это вариант t1.speed=0
  def speed_stop
    @speed = 0
  end 

#аналогично можно объявить attr_accessor, но тогда не добавить доп. условия в модуль
  def carriages_count
    @carriages
  end

#+1 -1. Сделал +- любое количество, вместо -+1
  def carriages_change(count)
    @carriages += count if (@carriages + count > 0) && @speed == 0
  end

  def current_station
    route.stations_list[@current_station]
    route.stations_list[@current_station].add_train(@train)
    puts route.stations_list[@current_station].station_name
    puts route.stations_list[@current_station].add_train(@train)
  end

  def station_next
    unless route.stations_list[@current_station+1].nil?    
      @current_station += 1
      route.stations_list[@current_station] 
      route.stations_list[@current_station-1].del_train(@train)
      route.stations_list[@current_station].add_train(@train)
      puts route.stations_list[@current_station].station_name
    else
      puts "Конечная станция"
    end
  end

  def station_prev
    if @current_station > 0 
      @current_station -= 1
      route.stations_list[@current_station]
      route.stations_list[@current_station+1].del_train(@train)  
      route.stations_list[@current_station].add_train(@train)
      puts route.stations_list[@current_station].station_name
    else
      puts "Начальная станция"
    end
  end

end