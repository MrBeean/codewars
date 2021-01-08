# Simple number sequence

### Link
[Kata](https://www.codewars.com/kata/simple-number-sequence)

### Description
TODO

### Solution ruby
TODO

### BEST practice ruby

```ruby
def missing s
  (1..(s.size/2)).each do |i|
    (i..i+1).each do |j|
      ss, sss, s1, s2 = s.dup, s.dup, s[0,i], s[-j..-1]
      if ((s2.to_i-s1.to_i)*j) >= s.size && (s1..s2).one?{ |n| ss.delete_prefix!(n.to_s).nil? }
        (s1..s2).each{ |n| return n.to_i if sss.delete_prefix!(n.to_s).nil? }
      end
    end
  end
  -1
end
```