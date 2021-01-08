# The Lazy Startup Office

### Link
[Kata](https://www.codewars.com/kata/5a8d2bf60025e9163c0000bc)

### Description
Задача на сортировку массива, согласно кол-ву повторений цифры и от меньшего к большему

    solve([2,3,5,3,7,9,5,3,7]) = [3,3,3,5,5,7,7,2,9]

### Solution ruby
Решение через использование вспомогательного хэша, в котором ведется подсчет по кол-ву повторений цифры

### BEST practice ruby

```ruby
def solve(arr)
  arr.sort_by { |e| [-arr.count(e), e] }
end
```