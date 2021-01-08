let palindromeChainLength = function pow(number) {
  return number == number.toString().split("").reverse().join("") ? 0 : 1 + palindromeChainLength(number + parseInt(number.toString().split("").reverse().join("")));
}

console.log(palindromeChainLength(87)) //#= 4
