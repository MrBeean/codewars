# Sum even numbers

### Link
[Kata](https://www.codewars.com/kata/54ff3102c1bad923760001f3)

### Description
Найти в строке гласные символы `aeiou`

### Solution ruby
Через метод `scan` и регулярку, с последующим `count`

### BEST practice ruby
Метод `count` может принимать параметры в виде строки

```ruby
def getCount(inputStr)
  inputStr.count("aeiou")
end
```
---

### Solution javascript
Метод `match` и регулярку с последующей проверкой на null и считаем кол-во объектов в массиве через `length`

### BEST practice javascript
Логика та же, более упрощено

```javascript
function getCount(str) {
  return (str.match(/[aeiou]/ig)||[]).length;
}
```