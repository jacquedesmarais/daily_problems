function mutation(stringOne, stringTwo) {
  var testArray = stringTwo.split("");
  var contains = false;
  for (var i = 0; i < testArray.length; i++) {
    if (!stringOne.includes(testArray[i])) {
      return false;
    }
  }
  return true;
}

console.log(mutation("burly", "ruby"));    // true
console.log(mutation("burly", "python"));  // false