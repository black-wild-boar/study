strings = ["first","second","third","fouth"]

new_arr = []

strings.each do |s|

  new_arr.push(s.to_sym)
end

  puts new_arr[1].class


  #====
#  part2-task6.rb 

stop_word = "stop"
arr_rinok = []
#hash_rinok = Hash.new { |tovar, price| hash[price] = Hash.new(0) }
#hash_rinok = { 
#              tovar_title: ("").to_sym,
#              tovar_price: Hash.new(0)
#              }

hash_rinok = {}

tovar = ""

until tovar == stop_word do
  puts "Товар (для останова введите слово stop)"
  tovar = gets.chomp
  break if tovar == stop_word

  puts "Цена за единицу"
  price_per_one = gets.chomp
  puts "Количество товара"
  count = gets.chomp

  #puts tovar.to_sym
  #puts price.to_f
  #puts count.to_f

#arr_rinok << {tovar_title: tovar.to_sym, tovar_price: [price.to_f, count.to_f]}
#hash_rinok[tovar_title:, tovar_price:] << {tovar.to_sym, (price: price.to_f, count: count.to_f)}

#arr_rinok << {tovar: tovar.to_sym, price: price.to_f, count: count.to_f}
#hash_rinok[:tovar] = tovar.to_sym
#hash_rinok[:price] = price.to_f
#hash_rinok[:count] = count.to_f
#hash_rinok.push[tovar.to_sym, price.to_f, count.to_f]

#перезаписывает т.к. одинаковый ключ
#hash_rinok =  {tovar: tovar.to_sym, price: {price: price.to_f, count: count.to_f}}
puts hash_rinok

hash_rinok[tovar.to_sym] = {price: price_per_one.to_f, count: count.to_f}
#hash_rinok[price] = {price: price.to_f, count: count.to_f}


puts "hash_rinok #{hash_rinok}"

#puts "hash_rinok #{hash_rinok}"
#puts "hash2_rinok #{hash2_rinok}"

#puts hash_rinok

#hash_rinok[:tovar] = tovar.to_sym 
#hash_rinok[:price] = {price: price.to_f, count: count.to_f}

#hash_rinok.store(tovar: tovar.to_sym, price: {price: price.to_f, count: count.to_f})

#hash_rinok[:tovar] = tovar.to_sym
#hash_rinok[:tovar][:price] = [price, count)


end

#puts hash_rinok.keys
#puts hash_rinok.values

#t={}
#t = {a: "a1", b: {b1: 2, b2: 3}}
#puts t[:b][:b1] + t[:b][:b2]

#puts hash_rinok[:price].price_per_one + hash_rinok[:price].count

price_summa = 0
hash_counts = hash_rinok.size
puts hash_counts

#for i in 1..hash_counts
#puts hash_rinok[:tovar]
#end

arr_hash_keys = hash_rinok.keys.to_a

puts "arr_hash_keys #{arr_hash_keys}"
puts "arr_hash_keys.size #{arr_hash_keys.size}"


sum = 0.to_f
for i in 0..arr_hash_keys.size-1

tovar = arr_hash_keys[i]
k = hash_rinok[arr_hash_keys[i]]
#sum=k[:price]+k[:value]
puts k[:price]
puts k[:count]
sum = k[:price] + k[:count]
puts "tovar #{tovar} k #{k} sum #{sum}"
end
#hash_rinok.each { |key| 
#hash_rinok.each_value { |value| print "v #{value}" }
# puts "k #{key}" } 


#  price_summa = hash_rinok[:price][:price_per_one] * hash_rinok[:price][:count]
#  print "h #{tovar} #{price} #{price_summa}" 

#puts hash_rinok[]
#puts hash_rinok[:a1][:price]
#puts hash_rinok[:price]
#end

#hash_rinok.each do
#  puts "Покупка товара #{hash_rinok(1).to_s} на сумму 5" 
#end


#arr_rinok.each {|tovar_title, tovar_price| puts "#{tovar_title} #{tovar_price} сумма за товар " + (5+7).to_s }

#puts arr_rinok
#puts hash_rinok

#arr_rinok.each {|tovar,price,count| print "a #{tovar} #{price} #{count}" }
#hash_rinok.each {|tovar,price,count| print "h #{tovar} #{price} #{count}" }

