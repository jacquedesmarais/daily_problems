def mutation?(word, contains_letters)
  contains_letters.split("")
  count = 0
    if word.include?(contains_letters[count])
      count += 1
      return true
    else return false
    end
end

p mutation?("burly", "ruby")    #=> true
p mutation?("burly", "python")  #=> false