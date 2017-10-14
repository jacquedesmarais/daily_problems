var numbers = [1, 2, 4, 2];

// var numbers = [1, 2, 4, 2];
// var doubledNumbers = [];
// for (var i = 0; i < numbers.length; i++) {
//   doubledNumbers.push(numbers[i] * 2);
// }
// console.log(doubledNumbers);

// refactored
var doubledNumbers = numbers.map(x => x * 2);

console.log(doubledNumbers);