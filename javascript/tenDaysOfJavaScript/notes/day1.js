/* let 
  This reserved word is used to delacer a variable.
*/
let number;
number = 0;


// This is how you create a function in JavbaScript
function factorial (number) {
  // This is a short if as Ruby
  return (number!=1) ? number * factorial(number-1) : 1;
}
// And you call the function this way.
factorial(5);


// It is possible to add Math functions this way.
const PI = Math.PI;