// Задача на перебор массива, если текущая цифра четная - суммируем ее
// перебираем массив, если остаток от деления на 2 == 0, оставляем, в противном случае заменяем на 0
// суммируем все

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

// BEST solution
// через функцию filter, в остальном логика аналогична
// sumEvenNumbers = input => input.filter(x => x % 2 == 0).reduce((x, y) => x + y, 0)
