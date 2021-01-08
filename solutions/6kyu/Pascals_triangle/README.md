# Pascal's Triangle

### Link
[Kata](https://www.codewars.com/kata/pascals-triangle)

### Description
TODO

### Solution ruby
TODO

### BEST practice ruby

```ruby
def pascalsTriangle(n)
   (1..n).each_with_object([]) do |i, a|
     a << (1..i).map { |j| j == 1 ? 1 : (a.last[j-2] + a.last[j-1] rescue 1) }
   end.flatten
end
```