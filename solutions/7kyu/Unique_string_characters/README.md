# Unique string characters

### Link
[Kata](https://www.codewars.com/kata/5a262cfb8f27f217f700000b)

### Description
Задача на проверку уникальных букв в двух строках

### Solution ruby
Разбить обе строки на массив и удалить элементы совпадающие по регулярке с другим масивом (метод `delete_if`),
объединить и обратно в строки

### BEST practice ruby
Метод [delete](https://ruby-doc.org/core-2.7.1/String.html#method-i-delete)
no comment
```ruby
def solve(a,b)
  a.delete(b) + b.delete(a)
end
```
---

### Solution javascript
Для решения использовалась функция `filter`, которая принимает в качестве аргумента callback функцию
https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Global_Objects/Array/filter

### BEST practice javascript
Так же через filter c callback и стрелочной функцией,
где проверяется вхождение фильтруемого элемента в строку a или строку b,
через функцию

```javascript
function solve(a,b){
 return (a+b).split("").filter(c => !a.includes(c) || !b.includes(c)).join("");
}
```