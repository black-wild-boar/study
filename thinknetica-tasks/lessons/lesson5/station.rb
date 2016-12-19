class Station
  attr_accessor :station_name, :trains
  @@stations_list = []

  def initialize(station)
    @station_name = station
    @trains = []
    @@stations_list << station
  end

  def self.all
    @@stations_list
  end

#а передаваться в массив поездов конкретной станции нужно объекты класса Train а не Fixnum поездов
  def add_train(train_number)
    @trains << train_number unless @trains.include?(train_number)
  end

  def del_train(train_number)
    @trains.delete(train_number)
  end

#сюда передаются объекты Trains
  def trains_by_type(type)
    @trains.each do |train|
      puts "type #{type} train #{train.train}" if train.type == type
    end    
    
  end

end

