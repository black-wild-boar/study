module Validation
  TRAIN_NUMBER_FORMAT = /^.{3}[-]*.{2}$/
  def validation!
    #raise "Введены некорректные данные!"
    raise "Некорректный формат номера поезда!" if train_id =~ TRAIN_NUMBER_FORMAT
    raise "Наименование станции не может быть менее 2х символов!" if station_name.nil? && station_name.to_s.lenght > 2
    # raise "Наименование станции не может быть менее 2х символов!" if first_station.nil? && first_station.to_s.lenght > 2
    # raise "Наименование станции не может быть менее 2х символов!" if last_station.nil? && last_station.to_s.lenght > 2
    raise "Скорость должна быть положительным числом!" if speed.class != Fixnum
    raise "Номер вагона не может быть пустым!" if carriage_number.to_s.lenght <= 0
    # raise "" if 
    # raise "" if 
    # raise "" if 
    # raise "" if 
    true
  end
module VK
def validate_carriage
  raise "Номер вагона не может быть пустым!" if carriage_number.to_s.lenght <= 0
  true
end
end

  def valid?
    validation!
  rescue
    false
  end
end

