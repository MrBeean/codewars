# Framed Reflection

### Link
[Kata](https://www.codewars.com/kata/framed-reflection)

### Description
    mirror('Hello World') #=> "*********\n* olleH *\n* dlroW *\n*********"
```ruby
# ********
# * olleH *
# * dlroW *
# *********
```


### Solution ruby
TODO

### BEST practice ruby

```ruby
def mirror(text)
  words = text.reverse.split.reverse
  max = words.max_by(&:length).size
  border = '*' * (max + 4)

  words.map{ |w| "* #{w.ljust(max)} *" }.unshift(border).push(border).join("\n")
end
```