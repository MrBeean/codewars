def balance(b)
  all_money = b.scan(/\d+\.\d+/).map!(&:to_f)
  balance = all_money.shift
  original_sum = "Original Balance: #{format('%.2f', balance)}\r\n"
  money_sum = all_money.inject(:+).round(2)
  average_sum = (money_sum / all_money.size).round(2)

  names = b.scan(/[a-zA-Z]|\d|\.|\s/).join('').split("\n").reject(&:empty?)
  names.shift
  names = names.each_with_index.map do |string, i|
    string = string.gsub(/\d+\.\d+/, '')
    position = format('%.2f', (balance - all_money[i]))
    balance -= all_money[i]
    string + "#{format('%.2f', all_money[i])} Balance #{position}"
  end
  names << "Total expense  #{format('%.2f', money_sum)}"
  names << "Average expense  #{format('%.2f', average_sum)}"
  original_sum + names.join("\r\n")
end

b = "1233.00
125 Hardware;! 24.8?;
123 Flowers 93.5
127 Meat 120.90
120 Picture 34.00
124 Gasoline 11.00
123 Photos;! 71.4?;
122 Picture 93.5
132 Tyres;! 19.00,?;
129 Stamps 13.6
129 Fruits{} 17.6
129 Market;! 128.00?;
121 Gasoline;! 13.6?;"

p balance(b)
