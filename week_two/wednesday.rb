def palindrome?(input)
  if input.reverse == input
    return true
  else return false
  end
end

p palindrome?("racecar")   #=> true
p palindrome?("wazzzzup")  #=> false