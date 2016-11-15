#Fibonacci sequence

#[a,a2,a3, a4,a5,..]
#a3 = a2 + a1
#a4 = a3 + a2

arr = [0,1]

for n in 1..100
  arr << arr[n-1]+arr[n]
end

puts "Fibonacci sequence: " + arr.to_s
#print arr
#puts #{/n}
