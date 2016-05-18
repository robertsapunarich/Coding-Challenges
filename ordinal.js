var readlineSync = require('readline-sync');

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

var digit = parseInt( readlineSync.question("Enter a digit: ") );

console.log(ordinal(digit));
