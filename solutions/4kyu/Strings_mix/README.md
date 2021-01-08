# Strings Mix

### Link
[Kata](https://www.codewars.com/kata/strings-mix)

### Description
TODO

### Solution ruby
TODO

### BEST practice ruby

```ruby
def mix(s1, s2)
  selection = ('a'..'z').to_a.select { |letter| s1.count(letter) > 1 || s2.count(letter) > 1 }
  selection.map! do |selection|
    if s1.count(selection) > s2.count(selection)
      "1:#{selection * s1.count(selection)}"
    elsif s1.count(selection) < s2.count(selection)
      "2:#{selection * s2.count(selection)}"
    else
      "=:#{selection * s1.count(selection)}"
    end
  end
  selection.sort_by { |x| [-x.size, x[0], x[-1]] }.join("/")
end
```