# Sum of Intervals

### Link
[Kata](https://www.codewars.com/kata/sum-of-intervals)

### Description
TODO

### Solution ruby
TODO

### BEST practice ruby

```ruby
def sum_of_intervals(intervals)
  intervals.map{|a| (a[0]...a[1]).to_a }.flatten.uniq.size
end
```