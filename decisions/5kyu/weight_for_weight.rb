def order_weight(strng)
  odered_arr = []
  arr = strng.split(' ')

  arr.each do |elem|
    odered_arr << [elem, elem.split('').map{|elem| elem.to_i}.sum]
  end
  odered_arr.sort_by { |x| [x[1], x[0]] }.map(&:first).join(' ')
end

order_weight("2000 10003 1234000 44444444 9999 11 11 22 123") #=> "11 11 2000 10003 22 123 1234000 44444444 9999")

# BEST practice
# def order_weight(string)
#   string.split.sort_by { |n| [n.chars.map(&:to_i).reduce(:+), n] }.join(" ")
# end