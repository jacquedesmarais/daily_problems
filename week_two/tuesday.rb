movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]

new_movies = []
movies.select do |movie|
  if movie[:title].downcase.include? "b"
    new_movies << movie
  end
end

movie_ids = new_movies.map { |new_movie| new_movie[:id] }

p movie_ids


