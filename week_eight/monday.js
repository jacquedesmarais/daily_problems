var items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
];

var numbers = items.map(number => number['id']);

console.log(numbers);

// => [1, 2, 3]