
puts "Enter a day as a numeric format"
#day = gets.chomp.to_i

puts "Enter a month as a numeric format"
#month = gets.chomp.to_i

puts "Enter a year as a numeric format"
year = gets.chomp.to_i



if (year % 4 == 0) || (year % 100 == 0) || (year == 2000)
puts "year high #{year}"
else
puts "year not high #{year}"

#  days == days + 1
end



