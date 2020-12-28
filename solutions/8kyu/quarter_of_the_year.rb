# Найти в какой четверти месяц, по его номеру

def quarter_of(month)
  if month > 6
    month > 9 ? 4 : 3
  else
    month > 3 ? 2 : 1
  end
end


# BEST practice
# В каждой четверти 3 месяца, делим на 3 - получаем четверть + округляем...
# def quarter_of(month)
#    (month/3.0).ceil
# end

p quarter_of(11) #=> 4
