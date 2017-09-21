def is_prime?(number)
  if number % number == 0 && number % 1 == 0 && number % 2 == 1
    true
  else
    false
  end
end

p is_prime?(10)  #=> false
p is_prime?(11)   #=> true
p is_prime?(12)   #=> false