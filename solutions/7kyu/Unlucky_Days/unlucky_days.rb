def unlucky_days(year)
  count = 0
  1.upto(12) do |i|
    count += 1 if Time.new(year, i, 13).friday?
  end
  count
end

p unlucky_days(2015)