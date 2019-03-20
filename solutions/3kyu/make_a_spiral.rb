# TODO: решить
# https://www.codewars.com/kata/make-a-spiral/train/ruby

def spiralize(size)
  array = []
  size.times do
    array << Array.new(size, 1)
  end
  array[1].collect! { |element|
    (element == 1) ? 0 : element
  }

  p array.transpose.reverse
end

# spiralize(3)
#  [[1,1,1],
#   [0,0,1],
#  [1,1,1]]
spiralize(8)
#[[1,1,1,1,1,1,1,1],
# [0,0,0,0,0,0,0,1],
# [1,1,1,1,1,1,0,1],
# [1,0,0,0,0,1,0,1],
# [1,0,1,0,0,1,0,1],
# [1,0,1,1,1,1,0,1],
# [1,0,0,0,0,0,0,1],
# [1,1,1,1,1,1,1,1]]
