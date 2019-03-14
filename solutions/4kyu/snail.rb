# Использована техника переворота блока из массива
# метод .transpose
# https://en.wikipedia.org/wiki/Transpose

def snail(array)
  return [] if array.empty?

  correct_array = []
  until array.empty?
    correct_array << array.shift
    array = array.transpose.reverse
  end
  correct_array.flatten
end

# BEST practice
# def snail(array)
#   array.empty? ? [] : array.shift + snail(array.transpose.reverse)
# end
