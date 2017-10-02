var array = [["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"]];
var newArray = [];

for (i = 0; i < array.length; i++) {
  for (j = 0; j < array[i].length; j++) {
    newArray.push(array[i][j]);
  }
}

console.log(newArray);