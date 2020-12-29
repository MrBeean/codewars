# Expressions Matter

### Link
[Kata](https://www.codewars.com/kata/5ae62fcf252e66d44d00008e)

### Description
Дано 3 числа, используя операторы `+, *, ()` найти уравнение возвращающее максимальное значение

With the numbers are 1, 2 and 3 , here are some ways of placing signs and brackets:
```
1 * (2 + 3) = 5
1 * 2 * 3 = 6
1 + 2 * 3 = 7
(1 + 2) * 3 = 9
```
So the maximum value that you can obtain is 9.

### Solution
Создаем массив, где каждым элементом будут все возможные варианты решения, после чего берем максимальное значение из массива, через метод `max`

### BEST practice
Аналогично
```ruby
def expression_matter(a, b, c)
   [a + b + c, a * b * c, (a + b) * c, a * (b + c)].max
end
```
