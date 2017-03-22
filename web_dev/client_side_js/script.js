var headers = document.getElementsByTagName("p");
var header = headers[0];
header.style.border = "2px solid blue";
var puppy = document.getElementById("puppy_photo");
puppy.style.border = "30px solid pink";
puppy.hidden = true;

function showPuppyImage() {
var puppy = document.getElementById("puppy_photo");
puppy.hidden = false; 
}

var button = document.getElementById("reveal_button");
button.addEventListener("click", showPuppyImage);

