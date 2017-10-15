// old code
// var numbers = [1, 2, 4, 2];
// var sum = 0;
// for (var i = 0; i < numbers.length; i++) {
//   sum += numbers[i];
// }

// refactored
var numbers = [1, 2, 4, 2];
var sum = numbers.reduce(function(total, amount) {
  return total + amount;
});

console.log(sum);