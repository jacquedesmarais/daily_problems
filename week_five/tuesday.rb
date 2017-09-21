array = [10, 17, 9, 1, 4, 92]

minimum_number = array.reduce { |smaller_number, current_number| smaller_number < current_number ? smaller_number : current_number }

p minimum_number