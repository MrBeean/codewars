class Array
  # swap index of a & b of caller array
  # pry>  [1, 2, 3, 4, 5].swap!(0, 4)
  # pry>  [5, 2, 3, 4, 1]
  def swap!(a, b)
    self[a], self[b] = self[b], self[a]
    self
  end
end

def smallest(n)
  current_sum = n
  array = []

  n.to_a.split('').each_char.with_index do |item, index|
    i = n.to_a.split('').size
    while i >=0

    end
    array
  end
end


smallest(261235) #--> [126235, 2, 0] or (126235, 2, 0) or "126235, 2, 0"

# найти все возможные комбинации перестановки
# каждый номер перестаить n раз, где n = длинна цифр
# полученное число, отобрать в массив из чисел, где каждое число - это перестановка возможной комбинации
# найти наименьшее
#