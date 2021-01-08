# String incrementer

### Link
[Kata](https://www.codewars.com/kata/string-incrementer)

### Description
TODO

### Solution ruby
TODO

### BEST practice ruby

```ruby
def increment_string(input)
  input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
end
```