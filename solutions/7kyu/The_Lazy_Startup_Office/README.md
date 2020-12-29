# The Lazy Startup Office

### Link
[Kata](https://www.codewars.com/kata/the-lazy-startup-office)

### Description
```ruby
[ ["Stefan", "Raj",    "Marie"],
  ["Alexa",  "Amy",    "Edward"],
  ["Liz",    "Claire", "Juan"],
  ["Dee",    "Luke",   "Katie"] ]
```
Дан массив, вывести массив зигзагом

![](http://i.imgur.com/JKlcPKxl.jpg)

`["Stefan", "Raj", "Marie", "Edward", "Amy", "Alexa", "Liz", "Claire", "Juan", "Katie", "Luke", "Dee"]`

### Solution
Каждый нечетый элемент массива нужно развернуть. После чего схлопнуть.
Для решения использованы методы `each_with_index` для определения порядкового номера элемента и `map` для разворачивания

### BEST practice

```ruby
def bin_rota(arr)
  arr.each_with_index.map { |x, i| i.odd? ? x.reverse : x }.flatten
end
```