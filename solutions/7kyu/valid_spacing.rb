# Задача на поиск не правильных пробелов, допустимы только один пробел между слов
# 'Hello world' = true
# ' Hello world' = false
# ' ' = false
# '' = true
# Напрашивается regexp, сравниваю есть ли совпадения по условиям
# пробел вначале || 2 пробела в середине || пробел в конце
# если совпадения есть - false
# Есть еще вот такой вариант /(^\s+)|(\s{2,})|(\s+$)/ - более упрощенный, увидел после решения
# s.match(/(\A\s+)|(\s{2,})|(\s+\z)/) ? false : true

def valid_spacing(s)
  s.match(/\s+\z/) || s.match(/\A\s+/) || s.match(/\s{2,}/) ?  false : true
end

# BEST solution
# Разбиваем строку на массив через пробел, после соединяем через пробел
# сравниваем с изначальной
# def valid_spacing(s)
#   s == s.split(' ').join(' ')
# end

p valid_spacing('Hello World') #= true
p valid_spacing(' Hello world') #= false
p valid_spacing('Hello  world ') #= false
p valid_spacing('cod ewars ') #= false
p valid_spacing( 'Hello') #= true
p valid_spacing('Helloworld') #= true