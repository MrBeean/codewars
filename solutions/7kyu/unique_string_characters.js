//Задача на проверку уникальных букв в двух строках
//solve("xyab","xzca") = "ybzc"

// Для решения использовалась функция filter, которая принимает в качестве аргумента callback функцию
// https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Global_Objects/Array/filter
//

function solve(a,b){
  let filteredA = a.split('').filter(
      function(e) {
        return this.indexOf(e) < 0;
      },
      b.split('')
  );

  let filteredB = b.split('').filter(
      function(e) {
        return this.indexOf(e) < 0;
      },
      a.split('')
  );
  return filteredA.join('') + filteredB.join('');
}

// BEST solution
// Так же через filter c callback и стрелочной функцией,
// где проверяется вхождение фильтруемого элемента в строку a или строку b,
// через функцию
// function solve(a,b){
//  return (a+b).split("").filter(c => !a.includes(c) || !b.includes(c)).join("");
// }

console.log(solve("xyab", "xzca")); //ybzc"
console.log(solve("xyabb", "xzca")); //"ybbzc"