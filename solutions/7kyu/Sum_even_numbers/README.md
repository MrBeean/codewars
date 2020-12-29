# Sum even numbers

### Link
[Kata](https://www.codewars.com/kata/586beb5ba44cfc44ed0006c3)

### Description
Задача на перебор массива, если текущая цифра четная - суммируем ее

### Solution ruby
перебираем массив, если остаток от деления на 2 == 0, оставляем, в противном случае заменяем на 0
суммируем все

### BEST practice ruby
через метод select, что лучше подходит для задачи.
```ruby
def sum_even_numbers(q)
  q.select{|i| i % 2 == 0}.sum
end
```
---

### Solution javascript
перебираем массив, если остаток от деления на 2 == 0, оставляем, в противном случае заменяем на 0. Суммируем все

### BEST practice javascript
через функцию filter, в остальном логика аналогична
```javascript
sumEvenNumbers = input => input.filter(x => x % 2 == 0).reduce((x, y) => x + y, 0)
```