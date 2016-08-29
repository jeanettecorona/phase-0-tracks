// Release 0

// Loop through an array
// Create empty string
// Find the length of each item in the array 
// Compare lengths of each item
// Reassign to new variable
// Return item with longest length

function longest_string(words) {
  var largest = 0;
  var longestWord = " ";

for (var i = 0; i < words.length; i++) {
    if (words[i].length > largest) {
    largest = words[i].length;
    longestWord = words[i];
    } 
}
	return longestWord 
}

console.log(longest_string(["str", "strr", "String"]));
