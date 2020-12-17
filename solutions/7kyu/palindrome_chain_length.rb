# Задача на поиск сумм палиндромов после складывания цифр -_-
# Точнее коли-во итераций до получения палиндрома
#   87 +   78 =  165     - step 1, not a palindrome
#  165 +  561 =  726     - step 2, not a palindrome
#  726 +  627 = 1353     - step 3, not a palindrome
# 1353 + 3531 = 4884     - step 4, palindrome!
#
# Тут прям напрашивается рекурсия с добавлением вспомогательного метода
# для подсчета кол-ва итераций

def palindrome_chain_length(number)
  count(number, 0)
end

def count(number, iterator)
  p number
  number == number.to_s.reverse.to_i ? iterator : count(number.to_s.reverse.to_i + number, iterator += 1)
end


# p palindrome_chain_length(4884) #= 4

# BEST solution
# решение проблемы с итерацией можно было решить так
# возвращаемое значение тернарного оператора суммируется само собой в результате работы рекурсии
# def palindrome_chain_length(n)
#   n.to_s == n.to_s.reverse ? 0 : 1 + palindrome_chain_length(n + n.to_s.reverse.to_i)
# end

p palindrome_chain_length(87) #= 4