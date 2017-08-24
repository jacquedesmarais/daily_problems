def reverse_a_string(string)
  split_string = string.split("")
  p split_string
  reverse_string = []
  string.length.times { reverse_string << split_string.pop }
  p reverse_string
  reverse_string.join
end

p reverse_a_string("abcde")  #=> "edcba"
puts "--------------"

def reverse_a_string_two(string)
  count = string.length
  reverse_string_two = ""
  length = count - 1
  while count >= 0 do
    reverse_string_two << string[length]
    count -= 1
  end
  return reverse_string_two
end


p reverse_a_string_two("abcde") #=> "edcba"