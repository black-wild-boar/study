require_relative 'modules/company.rb'

class Train
  include Manufacturer
  attr_accessor :route
  attr_reader :train_id
  attr_accessor :train_type
  attr_accessor :speed
  attr_accessor :carriages
  attr_accessor :current_station

  TRAIN_NUMBER_FORMAT = /^.{3}[-]*.{2}$/
  
  @@trains_list = {}
  

  def initialize(train_id)
    @train_id = train_id
    validation!
    @train_type = self.class
    @carriages ={}    
#    @carriages = []
    
    @speed = 0
    @current_station = {}
    @@trains_list[train_id] = self
  end

  def touch_all_carriage(&carriage_block)
    @carriages.each do |carriage|
      yield(carriage)
    end
  end

  def validation!
    raise puts "raise Некорректный формат номера поезда!" if train_id !~ TRAIN_NUMBER_FORMAT
    true
  end

  def valid?
    validation!
  rescue
    false
  end

  def self.find(train_id)
    if @@trains_list.keys.include?(train_id)
      puts "Current #{train_id} train is #{@@trains_list[train_id]}"
    else
      puts "No #{train_id} train"
    end
  end

  def add_carriage_to_train(carriage_number)
  #def add_carriage_to_train(carriage_number, seats_count, carriage_volume)
    raise "Номер вагона не может быть пустым!" if carriage_number.to_s.length <= 0
    @carriages << carriage_number if self.class == train_type && @speed.zero?
    # if self.class == train_type && @speed.zero?
    #   @carriages << CarriageType.new
    # end
  end

  def speed_stop
    @speed = 0    
  end 

  def add_current_station
#сначала добавление объекта класса Train в массив trains класса Station
    route.stations_list[@current_station].add_train(self)
#добавление объекта класса Route через метод-сеттер атрибута route класса Train   
    route.stations_list[@current_station]
#    p "train #{@train_id}"
    end

  def station_next
    unless route.stations_list[@current_station+1].nil?    
      @current_station += 1
      route.stations_list[@current_station] 
      route.stations_list[@current_station-1].del_train(@train_id)
      route.stations_list[@current_station].add_train(@train_id)
      puts route.stations_list[@current_station].station_name
    else
      puts "Конечная станция"
    end
  end

  def station_prev
    if @current_station > 0 
      @current_station -= 1
      route.stations_list[@current_station]
      route.stations_list[@current_station+1].del_train(@train_id)  
      route.stations_list[@current_station].add_train(@train_id)
      puts route.stations_list[@current_station].station_name
    else
      puts "Начальная станция"
    end
  end

#может менять тип если скорость = 0 вагонов нет и станция начальная
  def set_train_type
    self.train_type = initial_train_type if @speed.zero? && @carriages.zero? && @current_station.zero?
  end

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
