# https://www.codewars.com/kata/unlucky-days/ruby

def unlucky_days(year)
  count = 0
  1.upto(12) do |i|
    count += 1 if Time.new(year, i, 13).friday?
  end
  count
end

puts unlucky_days(2015)

# Best Practice
# def unlucky_days(year)
#   (1..12).reduce(0) do |sum, m|
#     sum += 1 if Date.new(year, m, 13, Date::GREGORIAN).friday?
#     sum
#   end
# end