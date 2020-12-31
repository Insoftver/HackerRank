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
 * This code is related to this problem.
 * https://www.hackerrank.com/challenges/js10-function/problem
 */
function factorial (number) {
  return (number!=1) ? number * factorial(number-1) : 1;
  
}


function main() {
    const n = +(readLine());
    
    console.log(factorial(n));
}

//