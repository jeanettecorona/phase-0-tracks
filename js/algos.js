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

// Driver code
console.log(longest_string(["str", "strr", "String"]));


// Release 1

// Declare two variables that hold name and age
// Write a function that takes two objects
// Loop through the properties of an object to see if they match
// Return true if match is found
// Else return false

var person = {name: "Steve", age: 54}; 
var person2 = {name: "Tamir", age: 54}; 

function compareMatch (person, person2){
	for (var key in person){
		if (person[key] == person2[key]){
			return true;
		}
	}
	return false;
}

console.log(compareMatch(person,person2));




