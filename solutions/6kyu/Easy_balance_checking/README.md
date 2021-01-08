# Easy Balance Checking

### Link
[Kata](https://www.codewars.com/kata/easy-balance-checking)

### Description
TODO

### Solution ruby
TODO

### BEST practice ruby

```ruby
def balance(b)
  check_book = b.split("\n").map { |l| l.gsub(/[^a-z\d\.\s]/i, '') }.delete_if(&:empty?)
  sum = original_bal = check_book.shift.gsub(/[^\d\.]/,'').to_f.round(2)
  formated = check_book.map do |item|
    sum = (sum - item.split(' ').last.to_f).round(2)
    num, cat, amount = item.split
    [num, cat, '%.2f' % amount, "Balance", '%.2f' % sum]
  end
  ["Original Balance: #{'%.2f' % (original_bal)}", formated.map { |item| item.join(' ') },
    "Total expense  #{'%.2f' % (total=(original_bal - formated.last.last.to_f).round(2))}",
    "Average expense  #{'%.2f' % ((total / check_book.size).round(2))}"
  ].join("\r\n")
end
```