# Valid Parentheses

### Link
[Kata](https://www.codewars.com/kata/valid-parentheses)

### Description
TODO

### Solution ruby
Рекурсия, методы slice и gsub

### BEST practice ruby

```ruby
def valid_parentheses(string)
 str = string.delete("^()")
 while str.gsub!("()",''); end
 str == ''
end
```