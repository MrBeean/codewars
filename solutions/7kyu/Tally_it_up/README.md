# Tally it up

### Link
[Kata](https://www.codewars.com/kata/5630d1747935943168000013/)

### Description
Специализированное декодирование цифр<br>
Используются буквы `a, b, c, d, e` для `1, 2, 3, 4, 5`, соответственно.<br> 
Кроме того пробел и разрыв строки `<br>` после каждого завершенного подсчета (5).

### Solution ruby
Делим на 5 - получаем количество `e <br>`<br>
После берем остаток от делени яна 5 и получаем нужную букву, выбирая ее из заранее объявленного хэша

### BEST practice ruby
Логика та же, только гораздо все проще<br>
Фича => строки можно умножать, а элемент массива можно вытащить по его номеру

```ruby
def score_to_tally(n)
  'e <br>'*(n/5)+['','a','b','c','d'][n%5]
end
```