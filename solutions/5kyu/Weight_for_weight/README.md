# Weight for weight

### Link
[Kata](https://www.codewars.com/kata/weight-for-weight)

### Description
TODO

### Solution ruby
TODO

### BEST practice ruby

```ruby
def order_weight(string)
  string.split.sort_by { |n| [n.chars.map(&:to_i).reduce(:+), n] }.join(" ")
end
```