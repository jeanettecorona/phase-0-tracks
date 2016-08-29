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
console.log(longest_string(["str", "strr", "string"]));


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

// Driver Code
// console.log(compareMatch(person,person2));

// Release 2

// Write a function that takes an integer for length
	// Declare empty array to hold the array of random word
	// Declare variable with alphabet
// Build a new string using integer given
	// Decare an empty string to store the new string
	// Declare the empty string to equal a random number between 1-10
	// Loop using the random number to build a random word
	// Push the random word into the empty array

function makeWordArray(arraynum) {
  var wordArray = [];
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    
    for (var i=0; i < arraynum; i++) {
      var newWord = "";
      var wordLength = Math.floor((Math.random() * 10) + 1);
      
      for (var j=0; j < wordLength; j++ ) {
          newWord += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
      }
      wordArray.push(newWord);
    }
    return wordArray;
}

// Driver Code
// console.log(makeWordArray(3))

// Add driver code that does the following 10 times: 
	// generates an array, 
	// prints the array, 
	// feeds the array to your "longest word" function, 
	// and prints the result.

for (var i = 0; i < 10; i++){
	array = makeWordArray(3)
	console.log(array)
	console.log(longest_string(array))
}


