var numbers = [1, 2, 4, 2];

// var evenNumbers = [];
// for (var i = 0; i < numbers.length; i++) {
//   if (numbers[i] % 2 === 0) {
//     evenNumbers.push(numbers[i]);
//   }
// }

// refactored
var evenNumbers = numbers.filter(number => number % 2 === 0);

console.log(evenNumbers);