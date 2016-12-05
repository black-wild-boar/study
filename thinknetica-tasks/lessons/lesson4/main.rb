require_relative 'train'
require_relative 'cargo_train'
require_relative 'passenger_train'
require_relative 'carriages'
require_relative 'cargo_carriage'
require_relative 'passenger_carriage'
require_relative 'station'
require_relative 'route'


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