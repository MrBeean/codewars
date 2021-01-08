function sumEvenNumbers(input) {
  return input
    .map(function (element) {
      return element % 2 === 0 ? element : 0;
    })
    .reduce((a, b) => a + b, 0);
}

console.log(sumEvenNumbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])); //=30
console.log(sumEvenNumbers([])); //= 0
console.log(sumEvenNumbers([-1, 22.4, -2])); //= -2
