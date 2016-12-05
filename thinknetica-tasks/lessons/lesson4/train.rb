class Train
  attr_accessor :route
  attr_reader :train_type
  attr_accessor :speed

  def initialize(train, train_type, carriages)
    @train = train
    @train_type = train_type
    @carriages = [carriages]
    @speed = 0
    @current_station = 0
  end

  def add_carriage_to_train(carriage_number)
    @carriages << carriage_number if @carriages[0].class == carriage_number.class
  end

  def speed_stop
    @speed = 0    
  end 

  def current_station
#сначала добавление объекта класса Train в массив trains класса Station
    route.stations_list[@current_station].add_train(self)
#добавление объекта класса Route через метод-сеттер атрибута route класса Train   
    route.stations_list[@current_station]
    p "train #{@train}"
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

#может менять тип если скорость = 0 вагонов нет и станция начальная
  def set_train_type
    self.train_type = initial_train_type if @speed.zero? && @carriages.zero? && @current_station.zero?
  end


private
attr_writer :train_type
#т.к. 0 только для поездов неопределенных классов
  def initial_train_type
    0
  end
#

protected

#protected для класса и подклассов. 

# т.к. только поезда могут менять скорость
  def speed_up(speed)
    @speed += speed
  end

  def speed_down(speed)
    @speed -= speed
  end
#
end
