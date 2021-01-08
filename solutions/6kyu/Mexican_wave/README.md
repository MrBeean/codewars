# Mexican Wave

### Link
[Kata](https://www.codewars.com/kata/meeting)

### Description
TODO

### Solution ruby
TODO

### BEST practice ruby

```ruby
def wave(str)
  result = []
  chars = str.downcase.chars
  chars.each_with_index do |char, idx|
    next if char == " "
    result << str[0...idx] + char.upcase + str[idx+1..-1]
  end
  result
end
```