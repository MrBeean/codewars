def snail(array)
  return [] if array.empty?

  correct_array = []
  while array.length != 0
    correct_array << array.shift
    array = array.transpose.reverse
  end
  return correct_array.flatten
end

# BEST practice
# def snail(array)
#   array.empty? ? [] : array.shift + snail(array.transpose.reverse)
# end
