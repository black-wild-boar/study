class Car

#6
#attr_accessor :current_rpm
#10
attr_reader :current_rpm

#7
  def initialize
    @current_rpm = 0
  end

  #1 завести двигатель
  def start_engine
    #3 запустить двигатель, если он не запущен
    start_engine! if engine_stopped?
  end

#4
  def engine_stopped?
    # true, если обороты на нуле
    current_rpm.zero?
  end

#8
#private

#14  
  protected

#11
attr_writer :current_rpm

#9
  #INITIAL_RPM = 700

#12
  def initial_rpm
    700
  end

#5
  def start_engine!
    #устанавливает начальные обороты
    #self.current_rpm = INITIAL_RPM
    # ??? почему не @current_rpm = 700
#13 
    self.current_rpm = initial_rpm
  end

  #2 остановить двигатель
end

class Truck < Car
  def loading
  end

#17
  #def wrong_method
  #  self.start_engine!
  #end  
#15
  protected
  def initial_rpm
    500
  end

end

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
#end