var isPrime = function(num) {
  if (num == 0 || num == 1) {
    return false;
  }
  else if (num == 2) {
    return true;
  }
  else {
    for (var i = 2; i <= Math.sqrt(num); i++) {
      if (num % i == 0) {
        return false;
      }
    }
    return true;
  }
}

console.log(isPrime(0));
console.log(isPrime(2));
console.log(isPrime(5));
console.log(isPrime(95));
console.log(isPrime(20));
console.log(isPrime(13));
console.log(isPrime(3067));
