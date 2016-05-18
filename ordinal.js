// Use `readline-sync` to get user input.
var readlineSync = require('readline-sync');

/* ordinal function takes in a digit. If the digit is between 10 and 20, it
returns the digit plus 'th'. If a digits remainder after being divided by 10
is 1, it appends 'st' to the returned digit. If the remainder is 2, it appends
'nd'. If the remainder is 3, it appends 'rd'. Finally, in all other cases, it
appends 'th' to the digit. Numbers in the teens are treated as edge cases. */

var ordinal = function( digit ) {
  if ( digit > 10 && digit < 20 ) {
    return digit + 'th';
  }
  else if ( digit % 10 === 1 ) {
    return digit + 'st';
  }
  else if ( digit % 10 === 2 ) {
    return digit + 'nd';
  }
  else if ( digit % 10 === 3 ) {
    return digit + 'rd';
  }
  else {
   return digit + 'th'; 
  }
}

// store user input in digit variable after converting it to an integer.
var input = parseInt( readlineSync.question("Enter a digit: ") );

// log the returned value of the `ordinal` function to the console.
console.log(ordinal(input));
