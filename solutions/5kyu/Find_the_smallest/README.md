# Find the smallest

### Link
[Kata](https://www.codewars.com/kata/find-the-smallest)

### Description
TODO

### Solution ruby
TODO

### BEST practice ruby

```ruby
def smallest(n)
  result = [n]
  size = n.to_s.size
  size.times do |i1|
    size.times do |i2|
      digits = n.to_s
      x = digits.slice!(i1)
      digits.insert(i2, x)
      result = [digits.to_i, i1, i2] if digits.to_i < result.first
    end
  end
  result
end
```