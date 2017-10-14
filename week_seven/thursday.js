function findTheMostLetterA(array) {
  var max = "";
  var maxCount = 0;
  for (var i = 0; i < array.length; i++) {
    var count = 0;
    for (var j = 0; j < array[i].length; j++) {
      if (array[i][j] === "a") {
        count += 1;
      }
    }
    if (count > maxCount) {
      maxCount = count;
      max = array[i];
    }
  }
  return max;
}

console.log(findTheMostLetterA(["alphabet", "aardvark", "anarchy"]));  // "aardvark"