# https://www.codewars.com/kata/directions-reduction/train/ruby

def dirReduc(arr)
  directions = {
    NORTH: 'SOUTH',
    SOUTH: 'NORTH',
    EAST: 'WEST',
    WEST: 'EAST'
  }

  return arr if arr.uniq.size == arr.size
  arr.collect!
end

# a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
# p dirReduc(a) # => ["WEST"]
# u=["NORTH", "WEST", "SOUTH", "EAST"]
# p dirReduc(u) # => ["NORTH", "WEST", "SOUTH", "EAST"])
d = ["NORTH", "EAST", "NORTH", "EAST", "WEST", "WEST", "EAST", "EAST", "WEST", "SOUTH"]
p dirReduc(d) # => ["NORTH", "EAST"]
# нужно через рекурсию!
#
# Первая реализация
# def dirReduc(arr)
#   directions = {
#     NORTH: 'SOUTH',
#     SOUTH: 'NORTH',
#     EAST: 'WEST',
#     WEST: 'EAST'
#   }
#
#   return arr if arr.uniq.size == arr.size
#   i = 0
#   new_arr = []
#   while i <= arr.size
#     direction = arr.shift
#     if arr.index(directions[direction.to_sym])
#       arr.delete_at(arr.index(directions[direction.to_sym]))
#     else
#       new_arr << direction
#     end
#     i += 1
#   end
#   (new_arr << arr).flatten
# end