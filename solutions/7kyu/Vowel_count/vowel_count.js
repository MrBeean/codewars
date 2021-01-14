function getCount(str) {
  return !(str.match(/[aeiou]/gi)) ? 0 : str.match(/[aeiou]/gi).length
}

console.log(getCount("")); //=0
console.log(getCount("pear tree")); //= 4
