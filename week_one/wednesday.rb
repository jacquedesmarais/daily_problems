def reverse_a_string(string)
  split_string = string.split("")
  reverse_string = []
   string.length.times { reverse_string << split_string.pop }
   reverse_string.join
end

p reverse_a_string("abcde")  #=> "edcba"