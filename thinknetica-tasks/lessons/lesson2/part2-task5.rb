#Number of a day

puts "Enter a day as a numeric format"

day = gets.chomp.to_i

puts "Enter a month as a numeric format"
month = gets.chomp.to_i

puts "Enter a year as a numeric format"
year = gets.chomp.to_i

array_of_months = [31,28,31,30,31,30,31,31,30,31,30,31]

if day <= 0 || day > 30 || month <= 0 || month > 12 || year <=0
  puts "Number of day can be only 1 .. 31"
  puts "Number of month can be only 1 .. 12"
  puts "Number of year can be only >= 1"
#test for leap-year
else
  if (year % 4 == 0) || (year % 100 == 0) || (year == 2000)
    array_of_months[month-1] += 1
    if day>array_of_months[month-1]
      puts "Incorrect day count at month #{day}.#{month}.#{year}"
    else
      puts "Correct day count at month #{day}.#{month}.#{year}. Leap-year."
      day_position = really_day_position = 0
      for i in 1..month-1 do 
        day_position = day_position + array_of_months[i]
      end
      really_day_position = day_position + day + year
      puts "Really_day_position = #{really_day_position}"
    end
  else
    if day>array_of_months[month-1]
      puts "Incorrect day count at month #{day}.#{month}.#{year}"
    else
      puts "Correct day count at month #{day}.#{month}.#{year}. Not leap-year."
      day_position = really_day_position = 0
      for i in 1..month-1 do 
        day_position = day_position + array_of_months[i]
      end
      really_day_position = day_position + day + year
      puts "Really_day_position = #{really_day_position}"
    end
  end
end
