# Использованы принципы `map`
# Трансформация строки в массив с последующим перебором и заменой
#

def duplicate_encode(word)
  word.downcase.chars.map { |letter| word.downcase.count(letter) > 1 ? ')' : '(' }.join
end

duplicate_encode('din') #=> "((("
duplicate_encode('(( @') #=> "))(("

# BEST practice
# my good
