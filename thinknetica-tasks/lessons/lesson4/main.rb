require_relative 'train'
require_relative 'cargo_train'
require_relative 'passenger_train'
require_relative 'carriages'
require_relative 'cargo_carriage'
require_relative 'passenger_carriage'
require_relative 'station'
require_relative 'route'

class Railway

attr_accessor :all_trains
attr_accessor :all_stations
attr_accessor :all_routes

all_trains={}
all_stations={}
all_routes={}

STOP_KEY = 0
PASSENGER_TRAIN_TYPE = 1
CARGO_TRAIN_TYPE = 2

#def stop_word?(stop_word)
#  break if stop_word == STOP_WORD
#end

def add_passenger_carriage
  until 0
    puts "Введите номер вагона"
    carriage_number = gets.chomp
    
  end

end
key = ""
until key == STOP_KEY

  puts "Вас приветствует система управления железнодорожной станцией!"

  puts "Добавить станцию. Нажмите 1."
  puts "Добавить маршрут. Нажмите 2."

  puts "Добавить пассажирский поезд. Нажмите 3."
  puts "Добавить грузовой поезд. Нажмите 4."

  puts "Добавить пассажирский вагон. Нажмите 5."
  puts "Добавить грузовой вагон. Нажмите 6."

  puts "Удалить пассажирский вагон. Нажмите 7."
  puts "Удалить грузовой вагон. Нажмите 8."

  puts "Показать список станций поезда. Нажмите 9."
  puts "Показать поездов на станции. Нажмите 10."

  puts "Для завершения нажмите 0"

key = gets.chomp.to_i
break if key == STOP_KEY
#cargomass = []

#1. станция
#2. маршрут
#3. поезд
#4. вагон
#
puts key.class
case key.to_i
#*1
    when key = 1
      puts "Введите название станции"
      station_name = gets.chomp
      all_stations[station_name] = Station.new(station_name)
      puts "Добавлена станция #{@station_name}."
      puts "Перечень станций #{all_stations}"
#*2
    when key = 2
      puts "Введите имя маршрута"
      route = gets.chomp
      puts "Полный перечень станций"
      puts all_stations
      all_stations.each_with_index { |value, index| puts value}#[index]}
      puts "Введите начальную станцию маршрута"
      first_station = gets.chomp
      puts "Введите конечную станцию маршрута"
      last_station = gets.chomp
      all_routes[route] = Route.new(all_stations[first_station], all_stations[last_station])
 
      puts "Добавлен маршрут #{route}."
      puts "Добавлен маршрут #{all_routes[route]}."
      puts all_routes
#*3
    when key = 3
      puts "Введите номер поезда"
      train = gets.chomp
      #puts "Введите количество вагонов"
      #carriages = gets.chomp
      all_trains[train] = PassengerTrain.new(train, PASSENGER_TRAIN_TYPE)#, carriages)
      puts "Добавлен пассажирский поезд #{all_trains[train]}"
      puts all_trains
#*4
    when key = 4
      puts "Введите номер поезда"
      train = gets.chomp
      #puts "Введите количество вагонов"
      #carriages = gets.chomp
      all_trains[train] = CargoTrain.new(train, CARGO_TRAIN_TYPE)#, carriages)
      puts "Добавлен грузовой поезд #{all_trains[train]}"
      puts all_trains
#*5
    when key = 5
    puts "Перечень поездов"
    puts all_trains.keys
    puts "Введите номер поезда"
    train_number = gets.chomp.to_i

    puts "Введите номер вагона"
    carriage_number = gets.chomp.to_i
   
    #all_trains.values.each_with_index { |value, index| puts "value #{value} "}
     
    all_trains.values.each do |train|
      #tests out puts
      #puts " type #{train.train_type}"
      #puts "train_id #{train.train_id}"
      #puts "train #{train}"
      #puts train_number == train.train_id.to_i
      #puts train.train_type

    if train_number == train.train_id.to_i && train.train_type == PASSENGER_TRAIN_TYPE
      train.add_carriage_to_train(carriage_number) 
      puts "Добавлен пассажирский вагон #{carriage_number} к поезду #{train.train_id}."
    else puts "Такого поезда не существует"
    end     
  end
    
    puts all_trains 

#*6
    when key = 6
    puts "Перечень поездов"
    puts all_trains.keys
    puts "Введите номер поезда"
    train_number = gets.chomp.to_i

    puts "Введите номер вагона"
    carriage_number = gets.chomp.to_i
   
    #all_trains.values.each_with_index { |value, index| puts "value #{value} "}
     
    all_trains.values.each do |train|
      #tests out puts
      #puts " type #{train.train_type}"
      #puts "train_id #{train.train_id}"
      #puts "train #{train}"
      #puts train_number == train.train_id.to_i
      #puts train.train_type

    if train_number == train.train_id.to_i && train.train_type == CARGO_TRAIN_TYPE
      train.add_carriage_to_train(carriage_number) 
      puts "Добавлен грузовой вагон #{carriage_number} к поезду #{train.train_id}."
    else puts "Такого поезда не существует"
    end     
  end
    
    puts all_trains 
#7
    when key = 7
    puts "Перечень поездов"
    puts all_trains.keys
    puts "Введите номер поезда"
    train_number = gets.chomp.to_i
    puts "Введите номер вагона"
    carriage_number = gets.chomp.to_i

    #all_trains.values.each_with_index { |value, index| puts "value #{value} "}
     
    all_trains.values.each do |train|
      #tests out puts
      #puts " type #{train.train_type}"
      #puts "train_id #{train.train_id}"
      #puts "train #{train}"
      #puts train_number == train.train_id.to_i
      #puts train.train_type

    if train_number == train.train_id.to_i && train.train_type == PASSENGER_TRAIN_TYPE && train.carriages.include?(carriage_number)
      train.carriages.delete(carriage_number)
      puts "Удален пассажирский вагон #{carriage_number} к поезду #{train.train_id}."
    else puts "Такого поезда не существует"
    end     
  end
    
    puts all_trains 

    #puts "Удален пассажирский вагон."
#*8
    when key = 8
    puts "Перечень поездов"
    puts all_trains.keys
    puts "Введите номер поезда"
    train_number = gets.chomp.to_i
    puts "Введите номер вагона"
    carriage_number = gets.chomp.to_i

    #all_trains.values.each_with_index { |value, index| puts "value #{value} "}
     
    all_trains.values.each do |train|
      #tests out puts
      #puts " type #{train.train_type}"
      #puts "train_id #{train.train_id}"
      #puts "train #{train}"
      #puts train_number == train.train_id.to_i
      #puts train.train_type

    if train_number == train.train_id.to_i && train.train_type == CARGO_TRAIN_TYPE && train.carriages.include?(carriage_number)
      train.carriages.delete(carriage_number)
      puts "Удален грузовой вагон #{carriage_number} к поезду #{train.train_id}."
    else puts "Такого поезда или вагона не существует"
    end     
  end
    
    puts all_trains 

 #     del_cargo_train = gets.chomp
      puts "Удален грузовой вагон."
#9 поместить поезд на станцию
    when key = 9
    puts "Перечень поездов"
    puts all_trains.keys
    puts "Перечень станций"
    puts all_stations.keys

    puts "Введите номер поезда"
    train_number = gets.chomp.to_s
    puts "Введите номер станции"
    station_name = gets.chomp
    
    
#puts all_trains.values[0]#.@current_station = station_name

    all_trains.values.each do |train|
    puts train.train_id
    #!!!!! вот два часа мозголомания из-за одинакового название переменной и метода
    puts train.current_station
    #puts all_trains.values[train]
      
    #puts all_trains.values[train][current_station]# << station_name
    #puts all_trains.values[train][current_station].class
    #  puts train
    #  puts train.train_id
    #  puts train.train_type
    #  puts all_trains

      #train.current_station.add << station_name
      #puts train.current_station
      #puts train.route
      
    end

  #   stations_list = gets.chomp
      puts "Список станций поезда.................."
    when key = 10
  #    trains_list = gets.chomp
      puts "Поезда на станции."
   # when 0
    #  STOP_WORD
    else
      puts "Введен некорректный выбор"
      #key = STOP_WORD
    end
  end

end


#  break if carriage = STOP_WORD


#s1 = Station.new("lg1")
#s2 = Station.new("lg2")
#s3 = Station.new("lg3")

#r1 = Route.new(s1,s2)
#r1.add_station(s3)

#r2 = Route.new(s3,s1)

#t1 = Train.new(101,2,7)
#t2 = Train.new(201,1,8)
#t3 = Train.new(301,2,9)

#t1.route = r1
#t1.current_station

#t2.route = r2
#t2.current_station

#t3.route = r1
#t3.current_station

#s1.trains_by_type(2)

#c - carriage
#cargo
#pass - passenger
#t - train
#s - station
#
#


#c_pass1 = PassengerCarriage.new(55)
#c_pass2 = PassengerCarriage.new(56)

#pass_t1 = PassengerTrain.new(101,1,c_pass1)
#puts pass_t1
#puts c_pass1
#puts c_pass2
#puts pass_t1


#pass_t1.add_carriage_to_train(c_pass2)
#puts pass_t1

#puts CarriageType.carriages_type
#puts Train.train_type
#puts CarriageType.carriages_type == Train.train_type