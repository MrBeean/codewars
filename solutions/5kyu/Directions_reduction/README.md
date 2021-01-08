# Directions Reduction

### Link
[Kata](https://www.codewars.com/kata/directions-reduction)

### Description
TODO

### Solution ruby
TODO

### BEST practice ruby

```ruby
OPPOSITE = {
  "NORTH" => "SOUTH",
  "SOUTH" => "NORTH",
  "EAST"  => "WEST",
  "WEST"  => "EAST"
}

def dirReduc(arr)
  stack = []
  arr.each do |dir|
    OPPOSITE[dir] == stack.last ? stack.pop : stack.push(dir)
  end
  stack
end
```