module FuelTank
  
  def fill_tank(level)
    self.fuel_tank = level
  end

  def fuel_level
    self.fuel_tank
  end

  protected
  attr_accessor :fuel_tank

end

#т.о. module Debugger становится нэймспэйсом
module Debugger # == Debugger = Module.new do .. end
#метод, чтобы передать модулю управление вызовом передаваемых классу методов
  def self.included(base)
    #аналогично подключению в классе include Debugger::ClassMethods
    base.extend ClassMethods
    #base.include InstanceMethods #не сработает, т.к. InstanceMethods является приватным методом класса
    #аналогично подключению в классе include Debugger::InstanceMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def debug(log)
      puts "!!! DEBUG #{log} !!!"
    end
  end

  module InstanceMethods
    def debug(log)
      self.class.debug(log)
    end
    def print_class
      puts self.class
    end
  end
end


class Car # == Car = Class.new do ... end
include FuelTank
#extend Debugger::ClassMethods
#include Debugger::InstanceMethods
include Debugger

attr_reader :current_rpm

@@instances = 0

  def self.instances
    @@instances
  end
#вызов метода как метода класса
debug 'Start interface'

  def initialize
    @current_rpm = 0
    @@instances += 1
    #вызов метода как инстанс-метода
    debug 'initialize'
    #
    #self.class.debug 'initialize'
  end


  def start_engine
    start_engine! if engine_stopped?
  end

  def engine_stopped?
    current_rpm.zero?
  end

debug 'End interface'

  protected
attr_writer :current_rpm

  def initial_rpm
    700
  end

  def start_engine!
    self.current_rpm = initial_rpm
  end

end

class MotorBike
#extend Debugger::ClassMethods
#include Debugger::InstanceMethods
include Debugger

  debug 'MotorBike class'
end
