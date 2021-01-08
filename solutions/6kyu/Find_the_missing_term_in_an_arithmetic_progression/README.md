# Find the missing term in an Arithmetic Progression

### Link
[Kata](https://www.codewars.com/kata/find-the-missing-term-in-an-arithmetic-progression)

### Description
TODO

### Solution ruby
TODO

### BEST practice ruby
вычисление суммы всех элементов, через формулу
    
    (sequence[0] + sequence[-1]) * (sequence.size + 1) / 2
    
```ruby
def find_missing(sequence)
  (sequence[0] + sequence[-1]) * (sequence.size + 1) / 2 - sequence.sum
end
```