# Задача на сортировку массива, согласно кол-ву повторений цифры и от меньшего к большему
# BEST practice очень элегантная

def solve(arr)
  hash = {}
  # считаем кол-во повторений и создаем хэш из цифр массива и кол-ва повторений
  arr.each do |i|
    hash[i] ? hash[i] += 1 : hash[i] = 1
  end

  # сортируем хэш согласно условия
  sorted_hash = hash.sort_by { |key, value| [value, -key] }.reverse.to_h

  new_arr = []
  # перебираем хэш и добавляем в массив столько key сколько у него value
  sorted_hash.each do |key, value|
    value.times do
      new_arr << key.to_i
    end
  end

  new_arr
end

p solve([2,3,5,3,7,9,5,3,7]) #=> [3,3,3,5,5,7,7,2,9]
p solve([5,9,6,9,6,5,9,9,4,4]) #=> [9,9,9,9,4,4,5,5,6,6]
p solve([4,9,5,0,7,3,8,4,9,0]) #=> [0,0,4,4,9,9,3,5,7,8]

# BEST practice
# def solve(arr)
#   arr.sort_by { |e| [-arr.count(e), e] }
# end