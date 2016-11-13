#Hash of indexing letters

letters_array = []

letters_array = ("a".."z").to_a

print letters_array

letters_hash = Hash.new(0)
i=0
letters_array.each do 
  letters_hash[letters_array[i].to_sym] = i + 1 
  i += 1
end

print "Hash of indexing letters #{letters_hash}"