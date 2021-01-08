# Meeting

### Link
[Kata](https://www.codewars.com/kata/meeting)

### Description
TODO

### Solution ruby
TODO

### BEST practice ruby

```ruby
def meeting(s)
  s.split(';').map {|el| '(' + el.split(':').reverse.join(', ').upcase+ ')'}.sort.join
end
```