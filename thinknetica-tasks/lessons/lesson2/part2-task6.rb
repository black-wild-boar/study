#Bazar

stop_word = "стоп"

hash_bazar = {}

goods = ""

#ввод данных
until goods == stop_word do

  puts "Введите наименование товара (для останова введите слово ""стоп"")."
  goods = gets.chomp
  break if goods == stop_word

  puts "Цена за единицу"
  price_per_one = gets.chomp.to_f
  if price_per_one <= 0 
    puts "Цена за единицу должна быть больше 0."
    break
  end

    puts "Количество товара"
    count = gets.chomp.to_f
  if count <= 0 
    puts "Количество должно быть больше 0."
    break
  end

  hash_bazar[goods.to_sym] = {price: price_per_one, count: count}

end

hash_counts = hash_bazar.size

array_hash_keys = hash_bazar.keys.to_a

sum_price = sum_all_goods = 0.to_f

#выборка и суммирование значений ключа price по каждому хэшу базара
array_hash_keys.each do |value|
#получаю значение ключа goods 
  goods_value = hash_bazar[value]
  sum_price = goods_value[:price] * goods_value[:count]
  puts "Товар #{goods}. Сумма по товару #{sum_price.round 2}."
  sum_all_goods = sum_all_goods + sum_price
end

#work variant
#i=0
#while i <= array_hash_keys.size-1
#  goods = array_hash_keys[i]
#получаю значение ключа goods 
#  goods_value = hash_bazar[array_hash_keys[i]]
#  sum_price = goods_value[:price] * goods_value[:count]
#  puts "Товар #{goods}. Сумма по товару #{sum_price.round 2}."
#  sum_all_goods = sum_all_goods + sum_price
# i += 1
#end

puts "Сумма покупок = #{sum_all_goods.round 2}"