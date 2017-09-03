# # Task 1 : Comment the code
# # Write your comments on what each thing is doing.
# # If you have difficulty, go into IRB and play with the methods.

def decoded_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",   # You could use a string with each letter to call on the index of the 4th one from the one entered instead.
            "h" => "d",   # The pros of a hash are that you could add new things to it easily, but it is very long.
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |x| # What is #each doing here? Iterating through the coded message that has been split
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? If it is true the tests dont run correctly, this allows the tests to run.
    cipher.each_key do |y| # What is #each_key doing here? looping through the cypher keys in the hash
      if x == y  # What is this comparing? the cypher key and the coded message for a match. Where is it getting x? from the input loop. Where is it getting y? from the cypher key. What are those variables really? strings
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here? to end this loop
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? if any of these are entered it adds a space to our output || are used as or.
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does "(0..9).to_a " do? counts from 0 to 9 and converts it to an array to see if it includes x
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  # What is this looking for? found_match to equal false
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")

  return decoded_sentence # What is this returning? the decoded sentence joined together
end

puts "Decoding messages..."
puts decoded_cipher("fi%wyvi%xs^hvmro^csyv#szepxmri")
puts decoded_cipher("asa,&csy^qywx#lezi^er@eajyp^psx$sj%jvii#xmqi&sr#csyv*lerhw!")
puts decoded_cipher("xs*amr@xli%keqi,#csy@qywx#ompp&qi,&nslr#vsqivs.")
puts decoded_cipher("izivcfshc*ks@xs*gsppiki,#wxyhc*levh,%wxyhc#levh.")
puts decoded_cipher("ai@mrxirh^xs%fikmr&sr*xli&jmvwx^sj^jifvyevc@yrviwxvmgxih&wyfqevmri%aevjevi.")
puts 

# Task 3: Refactor the initial solution (rewrite the code in a shorter, dry, easy to read solution without breaking the tests)

def decoded_cipher_refactored(coded_message)
  decoded_sentence = []
  alphabet   = Array('a'..'z')
  cipher = Hash[alphabet.zip(alphabet.rotate(shift = -4))]

  coded_message.split("").each do |x|
    found_match = false
    cipher.each_key do |y|
      if x == y
        decoded_sentence << cipher[y]
        found_match = true
        break
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
        decoded_sentence << " "
        found_match = true
        break
      end
    end
    if !found_match
      decoded_sentence << x
    end
  end
  return decoded_sentence.join("")
end

puts "Decoding messages..."
puts decoded_cipher_refactored("fi%wyvi%xs^hvmro^csyv#szepxmri")
puts decoded_cipher_refactored("asa,&csy^qywx#lezi^er@eajyp^psx$sj%jvii#xmqi&sr#csyv*lerhw!")
puts decoded_cipher_refactored("xs*amr@xli%keqi,#csy@qywx#ompp&qi,&nslr#vsqivs.")
puts decoded_cipher_refactored("izivcfshc*ks@xs*gsppiki,#wxyhc*levh,%wxyhc#levh.")
puts decoded_cipher_refactored("ai@mrxirh^xs%fikmr&sr*xli&jmvwx^sj^jifvyevc@yrviwxvmgxih&wyfqevmri%aevjevi.")
puts 


# DRIVER TESTS GO BELOW THIS LINE
puts "Running tests for `decoded_cipher`..."
puts decoded_cipher_refactored("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true

# Task 2: Write additional tests
# Create more driver test code based on the decoded messages. Driver test code statements should always return "true."






puts
puts "Finished running tests."