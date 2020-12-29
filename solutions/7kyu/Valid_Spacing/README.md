# Valid Spacing

### Link
[Kata](https://www.codewars.com/kata/5f77d62851f6bc0033616bd8)

### Description
Задача на поиск не правильных пробелов, допустимы только один пробел между слов
        
    'Hello world' = true
    ' Hello world' = false
    ' ' = false
    '' = true

### Solution ruby
Напрашивается `regexp`, сравниваю есть ли совпадения по условиям - пробел вначале || 2 пробела в середине || пробел в конце, если совпадения есть - `false`

Есть еще вот такой вариант `/(^\s+)|(\s{2,})|(\s+$)/` - более упрощенный, увидел после решения
`s.match(/(\A\s+)|(\s{2,})|(\s+\z)/) ? false : true`

### BEST practice ruby
Разбиваем строку на массив через пробел, после соединяем через пробел
сравниваем с изначальной
```ruby
def valid_spacing(s)
  s == s.split(' ').join(' ')
end
```
---

### Solution javascript
Разбиваем строку на массив через пробел, оставляем только элементы массива с длинной больше 0. После соединяем через пробел сравниваем с изначальной версией

### BEST practice javascript
По логике примерно то же самое, считаю самым интересным этот вариант с функцией `includes()`
```javascript
function validSpacing(s) {
  if (s == "")
    return true
  else
    return !s.split(" ").includes("")
}
```