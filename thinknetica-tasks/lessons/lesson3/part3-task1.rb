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
    @@trains[station_name] = {}
#    @@passanger_count += 1 if @train_type == 0
#    @@cargo_count += 1 if @train_type == 1
#    if @train_type = 0 
#      @@passanger_count += 1
#      elsif @train_type = 1
#        @@cargo_count += 1
#      else
#        puts "Train type must be: 0  - passanger's, 1 - cargo"
#      end
#    end

#    @list_stations = {}
  end

  def add_train(train_number, train_type)
#    puts "Перечень станций: #{@@trains}"
#    puts "Введите наименование станции"
#    name_station = gets.chomp
#    @@trains
#    @@trains.each
    @train_number = train_number
    @train_type = train_type
    
    @@trains[@station_name][train_number] = train_type

#    puts "Введите имя станции, после которой добавить"
#    name_previous = gets.chomp
#    @@trains[name_station] = 0
#    puts "Добавлена станция #{name_station} после станции #{name_previous}"
#    @list_stations()
#    @train_type = train_type
  end

  def Station.all_trains
    @@trains
  end

 def remove_train(train_number)
    @train_number = train_number
    @@trains[@station_name].delete(train_number)


#   train_number = gets.chomp
#    @@trains.each_with_index | value, index| do
#      if @@trains.include(train_number)? @@trains[index].delete
#      end
#   @@trains.foreach do |index|
#     delete.@@trains if  == i
  end
      
# end
#   delete
# end

  def show_train
    puts "It is #{@station_name} train. It #{@train_type} type"
  end

  def Station.cargo_count
    @@cargo_count
  end

  def Station.passanger_count
    @@passanger_count
  end

end


#2
class Route

  @@route_list = Array.new(0)
  
  def initialize(first_station, last_station)
    @first_station = first_station
    @last_station = last_station
    @@route_list[0] = first_station
    @@route_list[1] = last_station
   super
   end

  def add_station(station_name)
    #tmp = @@route_list[-1]
    #@@route_list[-1] = station_name
    #@@route_list.push(tmp)
    #insert(<position>,<value1>,<value2>),<value3>))
    @@route_list.insert(@@route_list.size-1, station_name)
  end

  def self.delete_station(station_name)
    @@route_list.delete(station_name)
  end

  def list_stations
    @@route_list
  end

end

#3
class Train < Route
attr_accessor :train_number, :train_type, :carriage_count, :speed
@speed = 0

#    @train_number = train_number
#    @train_type = train_type
#    @carriage_count = carriage_count
#    @speed = speed


#  def initialize(train_number, train_type, carriage_count, speed = 0)
#    @train_number = train_number
#    @train_type = train_type
#    @carriage_count = carriage_count
#    @speed = speed
#    add_station
#  end

# def increase_speed(speed)
#   @speed = speed
# end

  def show_speed
    puts "Current speed = #{@speed}"
  end

  def stop
    @speed = 0
  end

# def carriage_count
#  @carriage_count
# end

  def change_carriage_count(count)
    #+1 -1
    puts "1 to increase carriage_count."
    puts "-1 to decrease carriage_count."
    @count = count

    if @speed == 0 && (@count == 1 || @count == -1) && @carriage_count > 0
      @carriage_count += 1 if @count == 1
      @carriage_count -= 1 if @count == -1
    else
      puts "Train is moving with speed = #{@speed} or insert correct value(1 or -1). count = #{@count}"
    end
  end

end
