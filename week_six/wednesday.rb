def highest_prime_number_under(number)
  prime_numbers = []
  count = 2

  until count == number do
    divisors = (2..9).to_a.select { |x| x != count }
    prime_numbers << count if divisors.all? { |x| count % x != 0 }
    count += 1
  end
  prime_numbers.last
end

p highest_prime_number_under(10)  #=> 7
p highest_prime_number_under(11)  #=> 7
p highest_prime_number_under(12)  #=> 11