require_relative 'train'
require_relative 'cargo_train'
require_relative 'passenger_train'
require_relative 'carriages'
require_relative 'cargo_carriage'
require_relative 'passenger_carriage'
require_relative 'station'
require_relative 'route'

class Railway
STOP_KEY = 0

def main_menu
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
    puts "Перевести поезд на станцию. Нажмите 9."
    puts "Показать поездов станций и поездов на станции. Нажмите 10."
    puts "Для завершения нажмите 0"

  key = gets.chomp.to_i
  break if key == STOP_KEY

#puts key.class
  case key.to_i
    when key = 1
      new_station
    when key = 2
      new_route
    when key = 3
      new_passenger_train
    when key = 4
      new_cargo_train
    when key = 5
      new_passenger_carriage
    when key = 6
      new_cargo_carriage
    when key = 7
      del_passenger_carriage
    when key = 8
      del_cargo_carriage
    when key = 9
      train_to_station
    when key = 10
      show_stations_and_trains
    else
      puts "Введен некорректный выбор"
    end
  end
end #def main_menu

private
attr_accessor :all_trains
attr_accessor :all_stations
attr_accessor :all_routes

@@all_trains={}
@@all_stations={}
@@all_routes={}


PASSENGER_TRAIN_TYPE = PassengerTrain#1
CARGO_TRAIN_TYPE = CargoTrain#2
#1
def new_station
  puts "Введите название станции"
  station_name = gets.chomp
  @@all_stations[station_name] = Station.new(station_name)
  puts "Добавлена станция #{station_name}."
  puts "Перечень станций #{@@all_stations}"
end
#2
def new_route
  puts "Введите имя маршрута"
  route = gets.chomp
  puts "Полный перечень станций"
  puts @@all_stations
  @@all_stations.each_with_index { |value, index| puts value}
  puts "Введите начальную станцию маршрута"
  first_station = gets.chomp
  puts "Введите конечную станцию маршрута"
  last_station = gets.chomp
  @@all_routes[route] = Route.new(@@all_stations[first_station], @@all_stations[last_station])
  puts "Добавлен маршрут #{route}."
  puts "Добавлен маршрут #{@@all_routes[route]}."
  puts @@all_routes
end
#3
def new_passenger_train
  puts "Введите номер поезда"
  train = gets.chomp
  @@all_trains[train] = PassengerTrain.new(train)
  puts @@all_trains[train].class.to_s
  puts "Добавлен пассажирский поезд #{@@all_trains[train]}"
  puts @@all_trains
end
#4
def new_cargo_train
  puts "Введите номер поезда"
  train = gets.chomp
  @@all_trains[train] = CargoTrain.new(train)
  puts "Добавлен грузовой поезд #{@@all_trains[train]}"
  puts @@all_trains
end
#5
def new_passenger_carriage
  puts "Перечень поездов"
  puts @@all_trains.keys 
  puts "Введите номер поезда"
  train_number = gets.chomp.to_i
  puts "Введите номер вагона"
  carriage_number = gets.chomp.to_i

  @@all_trains.values.each do |train|
    if train_number == train.train_id.to_i && train.train_type == PASSENGER_TRAIN_TYPE
      train.add_carriage_to_train(carriage_number) 
      puts "Добавлен пассажирский вагон #{carriage_number} к поезду #{train.train_id}."
    else puts "Такого поезда не существует"
    end     
  end
  puts @@all_trains 
end
#6
def new_cargo_carriage
  puts "Перечень поездов"
  puts @@all_trains.keys
  puts "Введите номер поезда"
  train_number = gets.chomp.to_i
  puts "Введите номер вагона"
  carriage_number = gets.chomp.to_i
 
  @@all_trains.values.each do |train|
    if train_number == train.train_id.to_i && train.train_type == CARGO_TRAIN_TYPE
      train.add_carriage_to_train(carriage_number) 
      puts "Добавлен грузовой вагон #{carriage_number} к поезду #{train.train_id}."
    else 
      puts "Такого поезда не существует"
    end     
  end
  puts @@all_trains 
end
#7
def del_passenger_carriage
  puts "Перечень поездов"
  puts @@all_trains.keys
  puts "Введите номер поезда"
  train_number = gets.chomp.to_i
  puts "Введите номер вагона"
  carriage_number = gets.chomp.to_i

  @@all_trains.values.each do |train|
    if train_number == train.train_id.to_i && train.train_type == PASSENGER_TRAIN_TYPE && train.carriages.include?(carriage_number)
      train.carriages.delete(carriage_number)
      puts "Удален пассажирский вагон #{carriage_number} к поезду #{train.train_id}."
    else puts "Такого поезда не существует"
    end     
  end
  puts @@all_trains  
end
#8
def del_cargo_carriage
  puts "Перечень поездов"
  puts @@all_trains.keys
  puts "Введите номер поезда"
  train_number = gets.chomp.to_i
  puts "Введите номер вагона"
  carriage_number = gets.chomp.to_i

  @@all_trains.values.each do |train|
    if train_number == train.train_id.to_i && train.train_type == CARGO_TRAIN_TYPE && train.carriages.include?(carriage_number)
      train.carriages.delete(carriage_number)
      puts "Удален грузовой вагон #{carriage_number} к поезду #{train.train_id}."
    else puts "Такого поезда или вагона не существует"
    end     
  end
  puts @@all_trains 
  puts "Удален грузовой вагон."
end
#9
def train_to_station
  puts "Перечень поездов"
  puts @@all_trains.keys
  puts "Перечень станций"
  puts @@all_stations.keys
  puts "Введите номер поезда"
  train_number = gets.chomp.to_s
  puts "Введите номер станции"
  station_name = gets.chomp

  @@all_trains.values.each do |train|
    if train_number == train.train_id
      train.current_station = {}
      train.current_station[station_name] = @@all_stations[station_name] 
    end
  end
  puts "Поезд № #{train_number} перемещен на станцию № #{station_name}"
end
#10
def show_stations_and_trains
  puts "Список станций"
  puts @@all_stations.keys
  puts @@all_stations.values
  puts "Введите название станции"
  station_name = gets.chomp
  puts @@all_trains
  puts "Поезда на станции #{station_name}."

  @@all_trains.values.each do |train|
    puts train if train.current_station = station_name
  end
end

end #RailWay
