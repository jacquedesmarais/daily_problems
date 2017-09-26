sentence = "You can live like a king but make sure it isn't a lie."

sentence.scan(/\w+/) { |word| 
  if word.length == 4 && word[0] == "l" && word[3] == "e"
    p word 
  end 
}
