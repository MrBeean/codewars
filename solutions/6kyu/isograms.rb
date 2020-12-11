# Задача на перебор строки. Поиск повторений букв
# приводим строку к нижнему регистру
# разделяем на массив с помощью метода chars и перебираем его
# в переборе считаем кол-во вхождений буквы в саму строку через метод count
# если меньше 1 вставляем пустую строку
# Если повторений нет должна получиться пустая строка

def is_isogram(string)
  string.downcase.chars.map { |letter| string.downcase.count(letter) > 1 ? '*' : '' }.join.empty?
end

p is_isogram("Dermatoglyphics") #true
p is_isogram("dniybpwyyohbb") #false
p is_isogram("") #true


# BEST solution
# приводим строку к нижнему регистру
# разделяем на массив, находим уникальные
# сравниваем с эталоном
def is_isogram_BEST_solution(string)
  string.downcase.chars.uniq == string.downcase.chars
end