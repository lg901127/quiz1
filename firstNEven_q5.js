var firstNEven = function(num) {
  var numbers = [];
  if (num == 0) {
    return 0;
  }
  else {
    for (var i = 1; i <= num; i++) {
      // if (i % 2 == 0) {
      //   numbers.push(i);
      // }
      numbers.push(i * 2)
    }
  }
  return numbers
}
console.log(firstNEven(50))
