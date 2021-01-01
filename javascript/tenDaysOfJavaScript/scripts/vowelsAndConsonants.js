
// This script is related with the next  problem.
// https://www.hackerrank.com/challenges/js10-loops/problem

'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
  inputString += inputStdin;
});

process.stdin.on('end', _ => {
  inputString = inputString.trim().split('\n').map(string => {
    return string.trim();
  });
  
  main();  
});

function readLine() {
  return inputString[currentLine++];
}

/*
 * This is not my code, I was able to find an answer
 * but was impractical and ugly, so I copied this code
 * and noted its methods to day2.js
 */
function vowelsAndConsonants(s) {
    const vowels = 'aeiou';
    var consonants = '';
    
    for(var i = 0; i < s.length; i++) {
       if (vowels.includes(s[i])) {
           console.log(s[i]);
       }
       else {
           consonants += s[i] + '\n';
       }
    }
    
    console.log(consonants.trim());
}


function main() {
  const s = readLine();
  
  vowelsAndConsonants(s);
}

//