# use map, select, reduce to calculate the total amount of works for all item type :book
# should return 3906

items = [
  {title: "NoDBA", words: 561, tags: ["nosql", "people", "orm"], type: :book},
  {title: "Infodeck", words: 1145, tags: ["nosql", "writing"], type: :book},
  {title: "OrmHate", words: 1718, tags: ["nosql", "orm"], type: :book},
  {title: "ruby", words: 1313, tags: ["ruby"], type: :article},
  {title: "DDD_Aggregate", words: 482, tags: ["nosql", "ddd"], type: :book}
]

books = []
items.select do |item| 
  if item[:type] == :book
     books << item
  end
end

p books

words = books.map {|book| book[:words] }

p words

word_count = words.reduce(:+)

p word_count
