var movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
];

// var newMovies = movies.map(movie => movie["title"].toLowerCase().includes("b"));
var numbers = movies.map(movie => movie["id"]);
var titles = movies.filter(movie => movie["title"].toLowerCase().includes("b"));
var finalNumbers = titles.map(movie => movie["id"]);

console.log(finalNumbers);

// => [2, 3]