// Отсортировать только не четные числа в массиве
// Задача на сортировки
// BEST practice: Логика верна, не использовал имеющиеся методы

function isOdd(n) {
  return Math.abs(n % 2) == 1;
}

function sortOddArr(arr) {
  return arr.sort((a, b) => {
    return a - b;
  });
}

function sortArray(arr) {
  let oddArr = [];
  let newarr = arr.map((element) => {
    if (isOdd(element)) {
      oddArr.push(element);
      return "odd";
    } else {
      return element;
    }
  });

  oddArr = sortOddArr(oddArr)

  return newarr.map((element) => {
    if (element == "odd") {
      element = oddArr.shift();
    }
    return element;
  });
}


console.log(sortArray([5, 3, 2, 8, 1, 4]));


// BEST practice
// function sortArray(array) {
//   const odd = array.filter((x) => x % 2).sort((a,b) => a - b);
//   return array.map((x) => x % 2 ? odd.shift() : x);
// }