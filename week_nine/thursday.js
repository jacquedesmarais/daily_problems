var items = [
  {title: "NoDBA", words: 561, tags: ["nosql", "people", "orm"], type: "book"},
  {title: "Infodeck", words: 1145, tags: ["nosql", "writing"], type: "book"},
  {title: "OrmHate", words: 1718, tags: ["nosql", "orm"], type: "book"},
  {title: "ruby", words: 1313, tags: ["ruby"], type: "article"},
  {title: "DDD_Aggregate", words: 482, tags: ["nosql", "ddd"], type: "book"}
];

var books = items.filter(function(item) {
  return item.type === "book";
});

var bookWords = books.map(function(book) {
  var words = {
    words: book.words
  };
  return words.words;
});

var sum = bookWords.reduce(function(total, amount) {
  return total + amount;
});

console.log(sum);

// => 3906 - Use the methods `map`, `filter`, and `reduce` and calculate the total amount of words for all items of type `"book"`