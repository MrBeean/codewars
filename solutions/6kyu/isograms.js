// Задача на перебор строки. Последовательно
// приводим строку к нижнему регистру
// разделяем на массив и сортируем его
// после объединяем обратно в строку
// через регулярку сравниваем есть ли повторение элементов

function isIsogram(str) {
  if (
    str
      .toLowerCase()
      .split("")
      .sort()
      .join("")
      .match(/(.)\1+/g)
  ) {
    return false;
  } else {
    return true;
  }
}

console.log(isIsogram("Dermatoglyphics")); //true
console.log(isIsogram("aBa")); //false
console.log(isIsogram("")); //true

// BEST solution
// function isIsogram(str){ 
//   return !/(\w).*\1/i.test(str)
// }
