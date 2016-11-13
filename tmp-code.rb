strings = ["first","second","third","fouth"]

new_arr = []

strings.each do |s|

  new_arr.push(s.to_sym)
end

  puts new_arr[1].class