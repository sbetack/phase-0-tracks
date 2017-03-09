//finds longest word

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


console.log(getNumOfRandWords(4));

