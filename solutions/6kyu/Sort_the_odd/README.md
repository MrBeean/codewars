# Sort the odd

### Link
[Kata](https://www.codewars.com/kata/578aa45ee9fd15ff4600090d)

### Description
Отсортировать только нечетные цифры из массива

### Solution javascript
TODO

### BEST practice javascript

```javascript
function sortArray(array) {
  const odd = array.filter((x) => x % 2).sort((a,b) => a - b);
  return array.map((x) => x % 2 ? odd.shift() : x);
}
```