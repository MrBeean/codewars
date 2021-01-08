# Rot13

### Link
[Kata](https://www.codewars.com/kata/rot13-1)

### Description
TODO

### Solution ruby
TODO

### BEST practice ruby

```ruby
def rot13(string)
  alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPGRSTUVWXYZ'
  rot_alphabet = 'nopqrstuvwxyzabcdefghijklmNOPGRSTUVWXYZABCDEFGHIJKLM'
  string.tr(alphabet, rot_alphabet)
end
```