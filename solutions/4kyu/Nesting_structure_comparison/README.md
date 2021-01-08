# Nesting Structure Comparison

### Link
[Kata](https://www.codewars.com/kata/nesting-structure-comparison)

### Description
TODO

### Solution ruby
Использована рекурсия с передачей дополнительного параметра для сохранения результата

### BEST practice ruby
В лучшем решении не используется доп параметры, все построено на return и рекурсии

```ruby
class Array

  def same_structure_as(a)
    return false if self.class!=a.class || size!=a.size
    a.each_index { |i| return false if self[i].class==Array && !self[i].same_structure_as(a[i]) }
    true
  end

end
```