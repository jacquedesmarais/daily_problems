def find_longest_word(string)
  longest_word = ""
  words = string.split(" ")
  p words
  words.each do |word|
    longest_word = word unless word.size <= longest_word.size
  end
  return longest_word
end

p find_longest_word("What is the longest word in this phrase?")   #=> "longest"
puts "--------------"