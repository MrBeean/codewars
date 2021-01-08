# Snail

### Link
[Kata](https://www.codewars.com/kata/snail)

### Description
![](http://www.haan.lu/files/2513/8347/2456/snail.png)

### Solution ruby
Использована техника переворота блока из массива
метод .transpose
https://en.wikipedia.org/wiki/Transpose

### BEST practice ruby

```ruby
def snail(array)
  array.empty? ? [] : array.shift + snail(array.transpose.reverse)
end
```