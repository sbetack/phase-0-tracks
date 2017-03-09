//finds longest word
/* set the first item in the array as the temporary longest word
  loop through the array starting at index 1
    compare this word length to the temporary longest word
    IF the new word is longer
      set the new word to be the temporary longest word
  end the loop
  return the longest word
  */

function findLongestPhrase(array) {
  var longest_word = array[0];
  for (i=1; i<array.length; i++) {
    if (array[i].length > longest_word.length) {
      longest_word = array[i];
    }
  }
  return longest_word;
}

test_array = ['oranges', 'apples', 'watermelons'];

console.log(findLongestPhrase(test_array));

test_array2 = ['oranges', 'watermelons', 'strawberries are my favorite', 'apples'];

console.log(findLongestPhrase(test_array2));


///////////////////////////////////////////////////////////////////////////////////////////


//finds key-value match
/* loop through one of the object's keys
      for each key check to see if that key is in the other object
      IF the key is in the other object 
          check to see that the values match
            IF they do 
              return true
      ELSE return false
      */

function anyKeyValueMatch(obj1, obj2) {
  for (var key in obj1) {
    if(obj2[key] != null) {
      if (obj1[key] == obj2[key]) {
        return true;
      }
    }
  }
  return false;
}


test_obj1 = {name: "Steven", age: 54};
test_obj2 = {name: "Tamir", age: 54};

console.log(anyKeyValueMatch(test_obj1, test_obj2))


test_obj3 = {name: "Steven", age: 40, height: "6feet"};
test_obj4 = {name: "Tamir", age: 54, height: "6feet3inch"};


console.log(anyKeyValueMatch(test_obj3, test_obj4));


// Random words function
/* the function getNumOfRandWords takes in a number
    create an alphabet string so that we can make random words
    create a blank return array
    Set up a loop that runs that number of times creating a random word each time
      get a random length between 1 and 10 for that word
      create a blank new word string
        Loop again through the random length
          add a random letter each time to the new word string
        end the loop
      add the word to the return array
    end
    return the return array 
  */



function getNumOfRandWords(number) {
  var alphabet = 'abcdefghijklmnopqrstuvwxyz';
  random_words = [];
  for(var i=0; i<number; i++) {
    var random_num = Math.floor((Math.random() * 10) + 1);
    new_word = '';
      for(var j=0; j<random_num; j++) {
        var random_index = Math.floor((Math.random() * alphabet.length-1) + 0);
        new_word += alphabet[random_index];
      }
    random_words.push(new_word);
  }
  return random_words;
}

// Driver code
function driverCode() {
    for (var i=1; i<=10; i++) {
    console.log(i);
    var random_input_num = Math.floor((Math.random() * 8) + 1);
    var test = getNumOfRandWords(random_input_num);
    console.log(test);
    console.log(findLongestPhrase(test));
    console.log("_________________________________________"); 
  }
}

driverCode()


