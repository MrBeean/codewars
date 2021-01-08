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
