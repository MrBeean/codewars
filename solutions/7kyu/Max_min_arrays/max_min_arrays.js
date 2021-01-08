function solve(arr){
  let sorted = [];
  if (arr.length === 0) {
    return sorted
  } else {
    sorted.push(arr.sort((a, b) => b - a).shift());
    sorted.push(arr.pop());
    sorted.push(solve(arr));
  }
  return sorted.flat().filter(number => number !== undefined && number !== null);
}

console.log(solve([15,11,10,7,12])) //> [15,7,12,10,11]
console.log(solve([91,75,86,14,82])) //> [91,14,86,75,82]
