class SportCar < Car
#18
  def start_engine
    puts "Click"
    super
    puts "Wroom!!!"
  end
#16
  protected
  def initial_rpm
    1000
  end

end

#19
#class Driver
#  def drive(car)
    # сесть в машину
    # запустить двигатель
    # передаю объект car в качестве параментра
#    car.start_engine
    # тронуться с места
#  end
