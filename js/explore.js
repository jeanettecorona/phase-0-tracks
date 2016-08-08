// for each string
	// split the characters 
	// reverse the array of characters
	// join the characters back into a string

function reverse(str) {
	return str.split('').reverse().join('');

}

var result = reverse("hello");

if (5>4) {
	console.log(result);
}

console.log(reverse("wassup"))
