def sum_of_range(array)
  array = array.sort
  new_array = (array[0]..array[1]).to_a
  new_array.reduce(:+)
end


p sum_of_range([1, 4])  #=> 10
p sum_of_range([4, 1])  #=> 10