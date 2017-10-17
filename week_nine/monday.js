var fruits = [
  {name: "apple", color: "red"},
  {name: "banana", color: "yellow"},
  {name: "grape", color: "purple"}
];

var fruit = {};
var newFruits = fruits.reduce(function(final, identifier) {
  fruit[identifier.name] = identifier.color;
  return final;
}, 0);

console.log(fruit);

// => {apple: "red", banana: "yellow", grape: "purple"}