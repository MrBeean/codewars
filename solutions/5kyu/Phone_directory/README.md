# Phone Directory

### Link
[Kata](https://www.codewars.com/kata/phone-directory)

### Description
TODO

### Solution ruby
TODO

### BEST practice ruby

```ruby
def phone(strng, num)
  a = strng.scan(/.*#{num}.*/)
  return "Error => Too many people: #{num}" if a.size > 1
  return "Error => Not found: #{num}" if a.empty?
  a = a.first
  "Phone => #{num}, Name => #{a[/<(.*)>/, 1]}, Address => #{a.gsub(/[^ ]*#{num}[^ ]*|<.*>|[,;\/]/,'')}".gsub(/[\s_]+/,' ').strip
end
```