
/*reverse a string function
create a new blank string to return
loop through the word starting at the last letter 
	add each letter to the return string
end the loop
return the string*/  


function reverse(string) {
	var reversedString = "";
	for (var i=string.length-1; i>=0; i--) {
		reversedString += string[i];
	}
	return reversedString;
}

var reversedWord = reverse("mississippi");

if (1 + 1 === 2) {
	console.log(reversedWord)
};