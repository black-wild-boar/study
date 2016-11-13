#Fibonacci sequence

#[a,a2,a3, a4,a5,..]
#a3 = a2 + a1
#a4 = a3 + a2

arr = [0,1]

count = 1

loop do

#arr.push(arr[count]+arr[count-1])
arr << arr[count]+arr[count-1]
  count += 1
  break if count > 100
end

puts #{\n}
puts "Fibonacci sequence #{arr}"
