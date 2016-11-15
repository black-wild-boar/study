#Array of numbers with a pitch of 5

array = []

i = 0 
until i == 100 do
  i += 5
array << i  
end

puts "Array of numbers with a pitch of 5: " + array.to_s
