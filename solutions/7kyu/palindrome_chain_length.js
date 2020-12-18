// Задача на поиск сумм палиндромов после складывания цифр -_-
// Точнее коли-во итераций до получения палиндрома
//   87 +   78 =  165     - step 1, not a palindrome
//  165 +  561 =  726     - step 2, not a palindrome
//  726 +  627 = 1353     - step 3, not a palindrome
// 1353 + 3531 = 4884     - step 4, palindrome!

// Аналогично как и с ruby через рекурсию

let palindromeChainLength = function pow(number) {
  return number == number.toString().split("").reverse().join("") ? 0 : 1 + palindromeChainLength(number + parseInt(number.toString().split("").reverse().join("")));
}

console.log(palindromeChainLength(87)) //#= 4

// BEST solution
// Неожиданно, лучшим считается громоздкое решение с добавлением вспомогательных функций
// var palindromeChainLength = function(n) {
//   var steps = 0;
//   while(!isPalindromic(n)) {
//     steps++;
//     n+=reverseNum(n);
//   }
//   return steps;
// };

// function isPalindromic(n) {
//   if (n < 0) throw 'isPalindromic only works for positive numbers.';
//   if (Math.floor(n / 10) === 0) return true; // Single digit numbers are palindromic.
//   if (n % 10 === 0) return false; // n > 0, without leading 0s cannot be palindromic if ending in 0.
//   return reverseNum(n) === n;
// }

// function reverseNum(n) {
//   var r = 0;
//   while (n) {
//     r *= 10;
//     r += n % 10;
//     n = Math.floor(n / 10);
//   }
//   return r;
// }