// Задача на перебор строки, и вместо буквы вернуть номер буквы из алфавита

const alphabets = "abcdefghijklmnopqrstuvwxyz";

function alphabetPosition(text) {
  let indexString = "";

  for (let char of text) {
    let index = alphabets.indexOf(char.toLowerCase()) + 1;
    if (Number(index) != 0) {
      indexString += `${index} `;
    }
  }

  return indexString.replace(/ $/g, "");
}

console.log(alphabetPosition("The narwhal bacons at midnight."));


// BEST solution
// function alphabetPosition(text) {
//   return text
//   .toUpperCase()
//   .match(/[a-z]/gi)
//   .map( (c) => c.charCodeAt() - 64)
//   .join(' ');
// }