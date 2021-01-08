# Take a Ten Minute Walk

### Link
[Kata](https://www.codewars.com/kata/take-a-ten-minute-walk)

### Description
При сравнении всех символов нужно получить 0
в лучшем реешшении сравнивается кол-во разнонаправленных направлений, сумма должна совпадать

### Solution ruby
TODO

### BEST practice ruby

```ruby
def isValidWalk(walk)
  walk.count('w') == walk.count('e') and
  walk.count('n') == walk.count('s') and
  walk.count == 10
end
```