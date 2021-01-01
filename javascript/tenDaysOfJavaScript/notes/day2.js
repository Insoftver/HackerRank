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
// https://www.w3schools.com/jsref/jsref_substring.asp
let string ;
string = 'Hello'
character = string.substring(1, 4); // ell

// atChar()
// https://www.w3schools.com/jsref/jsref_charat.asp
character = string.atChar(1); // e

//