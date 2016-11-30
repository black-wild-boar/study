#class Route
#  attr_reader :stations
#end

class Train

  attr_accessor :route, :station

  @@trains = {}

#{number: [[train_type, carriage_count, current_stations],{route: stations}]}

  def initialize(train_number, train_type, carriage_count)
    @train_number = train_number
    @train_type = train_type
    @carriage_count = carriage_count
    @current_station = 0
    @@trains[@train_number] = [@train_type, carriage_count] 
    #@@trains[@train_number] = [@train_type, @carriage_count, @current_station, route] 
#???  как получить значение - имя создаваемого объекта класса
#тогда будет ключ = имя, значение = массив
    @speed = 0
  end

  def current_station
    route.stations[@current_station]
    puts "Текущая станция #{route.stations[@current_station].show_station} "
    #eee = route.stations[@current_station].show_station
  #  puts $trains_at_stations
    #$trains_at_stations[eee.to_sym].push(@train_number)
    station[@current_station]

#наверное должен быть хэш {station1: [t1,t2], station2: [t3,t4],...}
  end

  def next_station
    if not route.stations[@current_station+1].nil?
      #??? как вывести название станции
      #puts route.at(route.stations[@current_station)
      #print @current_station
      @current_station += 1
    else
      puts "It's last station" #{@stations}"
      puts @current_station
    end
  end

  def prev_station
    if @current_station >= 1 
#      puts @current_station
      @current_station -= 1
    else
      puts "It's first station"
 #     puts @current_station
    end
  end

  def show_next_station
    route.stations[@current_station+1] unless route.stations[@current_station+1].nil?
  end

  def show_prev_station
    route.stations[@current_station-1] if @current_station >= 1
  end

  def self.show_trains
    @@trains
  end

  def speed_up(count)
    @speed += count if count > 0
    puts "Текущая скорость: #{@speed}"
  end

  def speed_down(count)
    @speed -= count if @speed > 0 && count > 0
    puts "Текущая скорость: #{@speed}"
  end

  def current_speed
    puts "Текущая скорость: #{@speed}"
  end

  def carriage_count_up(count)
    @carriage_count += count if @speed == 0 && count > 0
  end

  def carriage_count_down(count)
    @carriage_count -= count if @speed == 0 && (@carriage_count-count)<0 && count > 0
  end

  def current_carriage_count
    @carriage_count
  end

end

class Station
  #attr_accessor :station_object
  #$trains_at_stations = {}
  
  #{station: [t1,t2,...]}

  def initialize(station)
    @station = station
   # @station_object = station

  end

  def self.show_stations
    #$trains_at_stations
    @station
  end

  def go_train(train)
    @train = train
    #$trains_at_stations.delete(@train)
  end

  def show_station
    @station
  end

end

class Route

  attr_reader :stations

  def initialize(first_station , last_station)
    @first_station = first_station
    @last_station = last_station
    @stations = [@first_station,@last_station]
  end


  def add_station(station)
    @station = station
    @stations.insert(@stations.size-1,@station)
  end

  def del_station(station)
    @station = station
    @stations.delete(@station)
  end

end

#s1 = Station.new("nsk")
#s2 = Station.new("msk")
#s3 = Station.new("spb")

#r1 = Route.new(s1,s2)
#r2 = Route.new(s2,s3)

#t1 = Train.new(101,1,5)
#t2 = Train.new(201,2,7)