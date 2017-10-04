function find_longest_word(string) {
  var words = string.split(/\W+/);
  longest = 0;
  longestWord = null;
  for(var i = 0; i < words.length; i++) {
    if(words[i].length > longest) {
      longest = words[i].length;
      longestWord = words[i];
    }
  }
  return longestWord
  }

console.log(find_longest_word("What is the longest word in this phrase?"));  // "longest"