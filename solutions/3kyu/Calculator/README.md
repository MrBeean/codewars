# Calculator

### Link
[Kata](https://www.codewars.com/kata/calculator)

### Description
    Calculator.new.evaluate("2 / 2 + 3 * 4 - 6") # => 7

### Solution ruby
Использована рекурсия
Метод inject - позволяет считать значения в массиве через передаваемый символ математической операции
Запись .map { | element | element.to_f } через .map(&:to_f)

### BEST practice ruby

```ruby
class Calculator
  def evaluate(string)
    [' + ', ' - ', ' * ', ' / '].each do |op|
      if string.include?(op)
        return string.split(op).map { |s| evaluate(s) }.inject(op.strip)
      end
    end
    string.to_f
  end
end
```