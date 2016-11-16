#Hash of indexing letters

letters_array = []

letters_array = ("a".."z").to_a

#puts "Letters_array: " + letters_array.to_s
#puts #{/n}

vowels = %w(a e i o u y)
#vowels = ["a", "e", "i", "o", "u", "y"]
#hash_vowels = %w(a e i o u y)

#puts hash_vowels[1].class

#hash_vowels = {}
hash_letters = {}

letters_array.each_with_index do |value, index| 
  if vowels.include?(value)
    hash_letters[value] = index+1
  end
end

puts "Vowels with positions: #{hash_letters}"

#  (index+1).upto letters_array.length-1 do |j|
#    if letters_array[j] == value
#      hash_letters[item] = index+1 })
#    end

#=> arr.at(0) = a

#%w(a e i o u y).each_with_index { | item, index| hash_vowels[item] = index+1 if letters_array.include?("w")}

#letters_array.each_with_index { | item, index| puts "Vowels: #{letters_array[index]} position for #{item}" if letters_array && vowels}
#hash_vowels[item] = index+1

#letters_array.each_with_index { |vowels, index| puts "Vowels: #{letters_array[index]} position for #{value}" if letters_array[index].include?vowels[a]}

#%w()["a", "e", "i", "o", "u", "y"].each_with_index { |letters_array, index | puts "Vowels: #{letters_array}  position for #{index+1}" }

#hash_vowels[letters_array.to_sym] = i

#{a: 1, e: 5}

# %w(a, b, c) == ["a", "b", "c"]

#work variant
#letters_array = []

#letters_array = ("a".."z").to_a

#vowels = ["a", "e", "i", "o", "u", "y"]
#for a in 0..vowels.size
#  letters_array.each_with_index { |value, index| puts "Vowels: #{index+1} position for #{value}" if letters_array[index] == vowels[a]}
#end
