class Station
  attr_accessor :station_name, :trains
  @@stations_list = []

  def initialize(station)
    @station_name = station
    validation!
    @trains = []
    @@stations_list << station
  end

  def train_to_block
    @trains.each {|train| yield(train)}
# вызов в irb например так object.method { |t1| puts t1 }
  end

  def validation!
    raise "Наименование станции не может быть менее 2х символов!" if station_name.to_s.length < 2
    true
  end

  def valid?
    validation!
  rescue
    false
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

