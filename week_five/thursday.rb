def find_the_most_letter_a(array)
  most_a = array.reduce { |most, least| most > least ? least : most }
  most_a
end

p find_the_most_letter_a(["alphabet", "aardvark", "anarchy"])  #=> "aardvark"