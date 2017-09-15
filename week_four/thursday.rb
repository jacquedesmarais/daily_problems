def find_missing_letter(string)
  total_missing = ""
  count = 0
  while count < string.length do
    range = string[count].ord - string[count - 1].ord
    if range > 1
      missing = string[count - 1].ord
      missing = missing + 1
      total_missing << missing.chr
      return total_missing
    end
    count += 1
  end
  return nil
end

p find_missing_letter("opqrsuv")  #=> "t"
p find_missing_letter("xyz")      #=> nil
p find_missing_letter("ace")      #=> "bd"
p find_missing_letter("jlmno")    #=> "k"
p find_missing_letter("xz")       #=> "y"
p find_missing_letter("dfghk")    #=> "eij"