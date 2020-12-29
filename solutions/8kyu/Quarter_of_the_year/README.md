# Quarter of the year

### Link
[Kata](https://www.codewars.com/kata/5ce9c1000bab0b001134f5af)

### Description

Найти в какой четверти месяц, по его номеру

### Solution ruby

Через ветвление и тернарные операторы

### BEST practice ruby
В каждой четверти 3 месяца, делим на 3 - получаем четверть + округляем...
```ruby

def quarter_of(month)
   (month/3.0).ceil
end
```
---

### Solution javascript

В каждой четверти 3 месяца, делим на 3 - получаем четверть + округляем - `Math.ceil`

### BEST practice javascript
Аналогично
```javascript
const quarterOf = m => Math.ceil(m/3);
```