# Задача на проверку уникальных букв в двух строках

# Разбить обе строки на массив и удалить элементы совпадающие по регулярке с другим масивом (метод delete_if),
# объединить и обратно в строки

def solve(a, b)
  ((a.split('').delete_if { |v| v =~ /["#{b}"]/ }) + (b.split('').delete_if { |v| v =~ /["#{a}"]/ })).join('')
end


# BEST solution
# Метод delete https://ruby-doc.org/core-2.7.1/String.html#method-i-delete
# no comment

# def solve(a,b)
#   a.delete(b) + b.delete(a)
# end

p solve("xyab", "xzca") #ybzc"
p solve("xyabb", "xzca") #"ybbzc"