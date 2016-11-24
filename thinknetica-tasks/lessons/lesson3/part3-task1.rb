#Management of railway station

#1
class Station
  @@trains = {}
  @@passanger_count = 0
  @@cargo_count = 0

  def initialize(station_name)#, train_type)
#train_type: 0 passanger's, 1 - cargo
    @station_name = station_name
#    @train_type = train_type
    @@trains[station_name] = train_type

    @@passanger_count += 1 if @train_type == 0
    @@cargo_count += 1 if @train_type == 1
#    if @train_type = 0 
#      @@passanger_count += 1
#      elsif @train_type = 1
#        @@cargo_count += 1
#      else
#        puts "Train type must be: 0  - passanger's, 1 - cargo"
#      end
#    end

    @list_stations = {}
  end

  def add_train(train_number)
    puts "Перечень станций: #{@@trains}"
    puts "Введите наименование станции"
#    name_station = gets.chomp
    @station_name
    puts "Введите имя станции, после которой добавить"
    name_previous = gets.chomp
    @@trains[name_station] = 0
    puts "Добавлена станция #{name_station} после станции #{name_previous}"
#    @list_stations()
#    @train_type = train_type
  end

  def remove_train(train_number)
    train_number = gets.chomp
#    @@trains.each_with_index | value, index| do
#      if @@trains.include(train_number)? @@trains[index].delete
#      end
    @@trains.foreach do |index|
      delete.@@trains if  == i
    end
      
  end
    delete
  end

  def show_train
    puts "It is #{@station_name} train. It #{@train_type} type"
  end

  def Station.all_trains
    @@trains
  end

  def Station.cargo_count
    @@cargo_count
  end

  def Station.passanger_count
    @@passanger_count
  end

  def train_outgo

  end

end

#2
class Route
  @@stations = Array.new(0)
  def initialize(first_station, last_station, list_stations = [])
    @first_station = first_station
    @last_station = last_station
    @@staions
   end

  def add_station

  end

  def delete_station
  end

  def list_stations
    #foreach 
    print @@stations
  end

end

#3
class Train

  def initialize(train_number, train_type, carriage_count, speed = 0)
    @train_number = train_number
    @train_type = train_type
    @carriage_count = carriage_count
    @speed = speed
  end

  def show_speed
    puts "Current speed = #{@speed}"
  end

  def stop
    @speed = 0
  end

  def new_speed
    @speed
  end

end

#new_train = Station.new("msk", 0)
#new_train2 = Station.new("msk", 1)

#puts new_train.show_train
#puts new_train2.show_train
#puts Station.train_count

