
/**
  This scripts is related to this practice.
  https://www.hackerrank.com/challenges/js10-hello-world/problem

  A line of code that prints "Hello, World!" 
  on a new line is provided in the editor. 
  Write a second line of code that prints the 
  contents of 'parameterVariable' on a new line.

  The function accepts a String as parameter.

**/

function greeting(parameterVariable) {
  // This line prints 'Hello, World!' to the console:
  console.log('Hello, World!');
  // Write a line of code that prints parameterVariable to stdout using console.log:
  console.log(parameterVariable);
}

function main() {
  /**const parameterVariable = readLine();**/
  const parameterVariable = 'Welcome to 10 Days of JavaScript!'
  greeting(parameterVariable);
}

main();

#