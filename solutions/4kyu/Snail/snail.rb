def snail(array)
  return [] if array.empty?

  correct_array = []
  until array.empty?
    correct_array << array.shift
    array = array.transpose.reverse
  end
  correct_array.flatten
end
