# No zeros for heros

### Link
[Kata](https://www.codewars.com/kata/no-zeros-for-heros)

### Description

Числа не должны заканчиваться 0, кроме числа 0. Удалить 0 с конца числа.

### Solution

Приводим цифру к строке и через регулярку и метод `gsub` удаляем 0 с конца строки.

### BEST practice
Аналогично
```ruby
def no_boring_zeros(num)
  num.to_s.gsub(/0+$/, '').to_i
end
```
