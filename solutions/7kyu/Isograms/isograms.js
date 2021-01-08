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
