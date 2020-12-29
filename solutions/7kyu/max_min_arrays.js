// Задача на сортировку массива
// первый самый большой элемент, первый самый маленький, второй самый болшой и т. д.
// solve([15,11,10,7,12]) = [15,7,12,10,11]
// Решил через рекурсию, сортируем от большего к меньшему, забираем первый и последний элемент в новый массив
// после чего повторно вызываем функцию, до тех пор пока массив не станет пуст
// в конце схлопываем массив и фильтруем от пустых значений через вызов callback стрелочной функции у функции filter

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


// BEST solution
//
// function solve(arr){
//   var minMax = [];
//   arr.sort((a,b)=>a-b);
//   for(var i = 0, j = arr.length-1; i <= j; i++,j--){
//     if(i != j) minMax.push(arr[j]), minMax.push(arr[i]);
//     else minMax.push(arr[i]);
//   }
//   return minMax;
// }

console.log(solve([15,11,10,7,12])) //> [15,7,12,10,11]
console.log(solve([91,75,86,14,82])) //> [91,14,86,75,82]
