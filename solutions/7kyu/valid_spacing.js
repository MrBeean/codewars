// Задача на поиск не правильных пробелов, допустимы только один пробел между слов
// 'Hello world' = true
// ' Hello world' = false
// ' ' = false
// '' = true
// Разбиваем строку на массив через пробел, оставляем только элементы массива с длинной больше 0
// после соединяем через пробел
// сравниваем с изначальной версией


function validSpacing(s) {
  return s == s.split(" ").filter(word => word.length > 0).join(" ")
}

// BEST solution
// По логике примерно то же самое, считаю самым интересным этот вариант с функцией includes()
// function validSpacing(s) {
//   if (s == "")
//     return true
//   else
//     return !s.split(" ").includes("")
// }

console.log(validSpacing('Hello World'))// #= true
console.log(validSpacing(' Hello world'))// #= false
console.log(validSpacing('Hello  world '))// #= false
console.log(validSpacing('cod ewars '))// #= false
console.log(validSpacing( 'Hello'))// #= true
console.log(validSpacing('Helloworld'))// #= true
console.log(validSpacing(' '))// #= false
console.log(validSpacing(''))// #= true