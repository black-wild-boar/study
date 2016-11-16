#Fibonacci sequence

#[a,a2,a3, a4,a5,..]
#a3 = a2 + a1
#a4 = a3 + a2

arr = [0,1]

while (arr[-1] + arr[-2]) < 100 do 
    arr << arr[-1] + arr[-2]
end

puts "Fibonacci sequence with numbers < 100: " + arr.to_s
#puts #{/n}
