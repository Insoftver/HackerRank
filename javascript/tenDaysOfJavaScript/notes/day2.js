// Conditional if can be used this way.

if (number == 30) {
    console.log(30);
}

if (answer == 'Y') {
  console.log('Yes');
} else {
  console.log('No');
}

if (score > 25) {
  grade = 'A';
} else if (score > 20) {
  grade = 'B';
} else if (score > 15) {
  grade = 'C';
} else if (score > 10) {
  grade = 'D';
} else if (score > 5) {
  grade = 'E';
} else if (score > 0) {
  grade = 'F';
}

// Conditional switch can be used this way

switch(letter){
  case 'a':
  case 'e':
  case 'i':
  case 'o':
  case 'u':
    letter = 'A';
    break;
  case 'b':
  case 'c':
  case 'd':
  case 'f':
  case 'g':
    letter = 'B';
    break;
  case 'h':
  case 'j':
  case 'k':
  case 'l':
  case 'm':
    letter = 'C';
    break;
  case 'n':
  case 'p':
  case 'q':
  case 'r':
  case 's':
  case 't':
  case 'v':
  case 'w':
  case 'x':
  case 'y':
  case 'z':
    letter = 'D';
    break;
}

// substring()
// The substring() method returns the part of the string 
// between the start and end indexes, or to the end of the string.
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/substring
let string ;
string = 'Hello'
character = string.substring(1, 4); // ell

// atChar()
// The String object's charAt() method returns a new string 
// consisting of the single UTF-16 code unit located at the 
// specified offset into the string.
// https://www.w3schools.com/jsref/jsref_charat.asp
character = string.atChar(1); // e

// includes
// This method works exatly as it does on Ruby.
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/includes
const vowels = 'aeiou';
for(var i = 0; i < s.length; i++) {
  if (vowels.includes(s[i])) {
    // something
  } else {
    consonants += s[i] + '\n';
  }
}

// trim
// The trim() method removes whitespace from both ends of a string.
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/trim
console.log(consonants.trim());

//