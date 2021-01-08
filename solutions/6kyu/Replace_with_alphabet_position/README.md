# Replace With Alphabet Position

### Link
[Kata](https://www.codewars.com/kata/546f922b54af40e1e90001da)

### Description
Найти номер буквы в алфавите и переобразовать строку в эти номера

### Solution javascript
Перебор строки и поиск индекса в заранее подготовленном массиве всех букв

### BEST practice javascript

```javascript
function alphabetPosition(text) {
  return text
  .toUpperCase()
  .match(/[a-z]/gi)
  .map( (c) => c.charCodeAt() - 64)
  .join(' ');
}
```