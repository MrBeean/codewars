# Unlucky Days

### Link
[Kata](https://www.codewars.com/kata/unlucky-days)

### Description
Посчитать кол-во Пятниц 13 в любом году

### Solution
Используем итератор от 1 до 12 (кол-во месяцев)
В итераторе создаем месяцы с числом 13 через `Time.new(year, i, 13)`
Вызываем на получившемся объекте типа дата метод `friday?`

### BEST practice

```ruby
def unlucky_days(year)
  (1..12).reduce(0) do |sum, m|
    sum += 1 if Date.new(year, m, 13, Date::GREGORIAN).friday?
    sum
  end
end
```