#Months with 30 days

months = { 
  january: 31,
  february: 28,
  mart: 31,
  april: 30,
  may: 31,
  june: 30,
  july: 31,
  august: 31,
  september: 30,
  october: 31,
  november: 30,
  december: 31
}

puts "Months with 30 days"
months.each do |name, days|
    
puts name.to_s if months[name] == 30
    
end


