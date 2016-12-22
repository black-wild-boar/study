# begin
#   puts 'Before exception'
#   Math.sqrt(-1)
#   puts 'After exception'
# #rescue Exception => e
# rescue StandardError => e
# #rescue NoMemoryError => e
#   puts 'Обработка исключения. Ты не можешь выполнить операцию.'
#   raise
#   #puts "Exception: #{e.inspect}"
#   #puts "Exception: #{e.message}"
#   #puts e.backtrace.inspect
# rescue NoMemoryError => e
#   puts "No memory!!!"

# end

# puts 'After exception done'

# ----
# def method_with_error
#   #...
#   #выбросить исключение 
#   # raise
#   # raise "Oh no!!!"
#   raise ArgumentError, "Oh no!!!"
# end

# begin
#   method_with_error
# #обработчик исключения (отлавливаем исключение)
# rescue RuntimeError => e
#   puts e.inspect
# end

# puts 'After exception done'
# ----

# def sqrt(value)
#   sqrt = Math.sqrt(value)
#   puts sqrt
# rescue StandardError
#   puts "Error value"
# end

# sqrt(-1)
#-----

def connect_to_wikipedia
  #...
  raise "Connection error"
end

attempt = 0
begin
  connect_to_wikipedia
rescue RuntimeError
  attempt += 1
  puts "Check your internet connection!"
  retry if attempt < 3
  #puts "Check your internet connection!"
ensure
  puts "There was #{attempt} attempts"
end