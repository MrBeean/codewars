# Isograms

### Link
[Kata](https://www.codewars.com/kata/54ba84be607a92aa900000f1)

### Description
Определить присутствуют ли в слове повторяющиеся буквы (без учета регистра)

### Solution ruby
Приводим строку к нижнему регистру, разделяем на массив с помощью метода `chars` и перебираем его в переборе считаем кол-во вхождений буквы в саму строку через метод `count`, если меньше 1 вставляем пустую строку. Если повторений нет должна получиться пустая строка

### BEST practice ruby
Приводим строку к нижнему регистру, разделяем на массив, находим уникальные - метод `uniq` и сравниваем с эталоном

```ruby
def is_isogram_BEST_solution(string)
  string.downcase.chars.uniq == string.downcase.chars
end
```
---

### Solution javascript
Приводим строку к нижнему регистру, разделяем на массив и сортируем его, после объединяем обратно в строку и через регулярку сравниваем есть ли повторение элементов

### BEST practice javascript
```javascript
function isIsogram(str){ 
  return !/(\w).*\1/i.test(str)
}
```