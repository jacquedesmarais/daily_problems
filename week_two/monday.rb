movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]
four_rating_movies = []

movies.select do |movie|
  if movie[:rating] < 4
    four_rating_movies <<  movie
  end
end

p four_rating_movies

string = "What is this?"

def reverse_array(input)
  reverse_arr = []
  arr = input.split('')
  p arr
  arr.count.times { reverse_arr << arr.pop }
  p reverse_arr.join
end

p reverse_array(string)