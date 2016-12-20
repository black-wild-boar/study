begin
  puts 'Before exception'
  Math.sqrt(-1)
  puts 'After exception'
rescue Exception => e
  puts 'Обработка исключения. Ты не можешь выполнить операцию.'
  puts "Exception: #{e.inspect}"
  puts "Exception: #{e.message}"
  puts e.backtrace.inspect
end