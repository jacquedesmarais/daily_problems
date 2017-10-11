function findTheMostLetterA(array) {
  var count = 0;
  array.forEach(function(word) {
    if (word === "a") {
      count += 1;
    }
  });
  return count;
}

console.log(findTheMostLetterA(["alphabet", "aardvark", "anarchy"]));  // "aardvark"