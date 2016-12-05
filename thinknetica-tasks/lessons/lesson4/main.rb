require_relative 'train'
require_relative 'cargo_train'
require_relative 'passenger_train'
require_relative 'carriages'
require_relative 'cargo_carriage'
require_relative 'passenger_carriage'
require_relative 'station'
require_relative 'route'

STOP_WORD = "stop"

#def stop_word?(stop_word)
#  break if stop_word == STOP_WORD
#end
key=""

until key "" STOP_WORD


  puts "Вас приветствует система управления железнодорожной станцией!"

  puts "Добавить пассажирский вагон. Нажмите 1."
  puts "Добавить грузовой вагон. Нажмите 2."
  puts "Добавить пассажирский поезд. Нажмите 3."
  puts "Добавить грузовой поезд. Нажмите 4."
  puts "Добавить станцию. Нажмите 5."
  puts "Добавить маршрут. Нажмите 6."

  puts "Удалить пассажирский поезд. Нажмите 7."
  puts "Удалить грузовой вагон. Нажмите 8."

  puts "Показать список станций поезда. Нажмите 9."
  puts "Показать поездов на станции. Нажмите 10."

  puts "Для завершения наберите слово ""Стоп"" "

case key
  #case key
    when key = 1
      puts "Добавлен пассажирский вагон."
      carriage = gets.chomp
    when key = 2
      carriage = gets.chomp
      puts "Добавлен грузовой вагон"
    when key = 3
      passenger_train = gets.chomp
      puts "Добавлен пассажирский поезд"
    when key = 4
      cargo_train = gets.chomp
      puts "Добавлен грузовой поезд"
    when key = 5
      add_station = gets.chomp
      puts "Добавлена станция."
    when key = 6
      add_route = gets.chomp
      puts "Добавлен маршрут."
    when key = 7
      del_passenger_train = gets.chomp
      puts "Удален пассажирский поезд."
    when key = 8
      del_cargo_train = gets.chomp
      puts "Удален грузовой вагон."
    when key = 9
      stations_list = gets.chomp
      puts "Список станций поезда."
    when key = 10
      trains_list = gets.chomp
      puts "Поезда на станции."
    when key = STOP_WORD
      exit;
      #break()
    else
      puts "Введен некорректный выбор"
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
c_pass1 = PassengerCarriage.new(55)
c_pass2 = PassengerCarriage.new(56)

pass_t1 = PassengerTrain.new(101,1,c_pass1)
puts pass_t1
puts c_pass1
puts c_pass2
puts pass_t1
#pass_t1.add_carriage_to_train(c_pass2)
#puts pass_t1

#puts CarriageType.carriages_type
#puts Train.train_type
#puts CarriageType.carriages_type == Train.train_type