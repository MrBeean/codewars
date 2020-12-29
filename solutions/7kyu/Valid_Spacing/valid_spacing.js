function validSpacing(s) {
  return s == s.split(" ").filter(word => word.length > 0).join(" ")
}

console.log(validSpacing('Hello World'))// #= true
console.log(validSpacing(' Hello world'))// #= false
console.log(validSpacing('Hello  world '))// #= false
console.log(validSpacing('cod ewars '))// #= false
console.log(validSpacing( 'Hello'))// #= true
console.log(validSpacing('Helloworld'))// #= true
console.log(validSpacing(' '))// #= false
console.log(validSpacing(''))// #= true
