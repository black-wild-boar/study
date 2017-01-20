# puts "Друзья, поздравляю всех с наступающими новогодними праздниками!!!"
# fun = ["отдыха","обучения","заработка"]
# wishes = ["успешного","лёгкого","интересного"]
# vzooh = rand(10)
# vzooh.times do
#   puts "Желаю всем #{wishes[rand(0..wishes.size-1)]} #{fun[rand(0..fun.size-1)]}!"
# end

#не передается в irb
#block = lambda { |x, y| puts "#{x} #{y}"}

#massive = [6,0,-3,0,5]

#m1 = 5
#m2 = 6

def method_m1_m2(m1,m2,block)
  if m1>m2 
    puts "m1>m2" 
  else 
    puts "m1<m2"
  end
  block.call(m1,m2)
end

#block = lambda {|x| puts "#{x}"}

#def block(mas)
#  puts "block #{mas}"
#  mas.each do |x|
#    puts "each in block #{x}"
#  end
#end

#block = lambda {puts "ghghghg"}
block = proc {puts "ghghghg"}

def b
  puts "kkkkkkk4"
end

def fff(s)
  puts "ddddddddd #{s}"
end



def m2 (mas, &b)
  puts "in method m2 #{mas}"
  #mas << 7
  #puts "after push 7 #{mas}"
  #mas.each {|x| puts "#{x}"}
  #block.call
  mas.each {|g| puts "g = #{g*10}"}
  yield(mas) if block_given?
  mas.each do |t|
  yield(t) if block_given?
  end
  fff(mas)
  #b.call(mas)
  #b.call(mas[0])
  #mas.each {|d| puts d}#}
  
  puts "after block.call #{mas}"
  #yield(mas)
end

#m2(4) {|f| puts "#{f} != 777"}
m2([1,2,3]) {|f| puts "#{f} != 777"}

