// The foobar problem (aka fizzbuzz) implemented in JavaScript.
// Still in progress.


// Require `readline-sync` to get user input
var readlineSync = require('readline-sync');

// Get user input and convert it to an integer
var input = parseInt(readlineSync.question("How many foos would you like to bar? "));

/* Foobar logic. If an integer is a multiple of 3, print "foo" to the console.
If it's a multiple of 5, print "bar". If it's a multiple of both, print "foobar".
In all other cases, print the integer. */

for (var iteration = 1; iteration <= input; iteration++) {
  if (iteration % 3 === 0 && iteration % 5 === 0) {
    console.log("foobar");
  } else if (iteration % 3 === 0) {
    console.log("foo");
  } else if (iteration % 5 === 0) {
    console.log("bar");
  } else {
    console.log(iteration);
  }
}