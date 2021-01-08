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
