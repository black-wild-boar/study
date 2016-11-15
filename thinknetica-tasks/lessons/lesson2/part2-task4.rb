#Hash of indexing letters

letters_array = []

letters_array = ("a".."z").to_a

puts "Letters_array: " + letters_array.to_s
#puts #{/n}

vowels = ["a", "e", "i", "o", "u", "y"]

for a in 0..vowels.size
  letters_array.each_with_index { |value, index| puts "Vowels: #{index+1} position for #{value}" if letters_array[index] == vowels[a]}
end
