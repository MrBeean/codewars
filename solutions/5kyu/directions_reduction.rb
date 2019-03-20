# https://www.codewars.com/kata/directions-reduction/train/ruby

def dirReduc(arr)
  directions = {
    NORTH: 'SOUTH',
    SOUTH: 'NORTH',
    EAST: 'WEST',
    WEST: 'EAST'
  }

  i = 0
  count = arr.size
  while i <= count do
    return arr if arr[i].nil?
    if directions[arr[i].to_sym] == arr[i + 1]
      arr.delete_at(i)
      arr.delete_at(i)
      i -= 1
    end
    i += 1
  end
end

a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
p dirReduc(a) # => ["WEST"]
u=["NORTH", "WEST", "SOUTH", "EAST"]
p dirReduc(u) # => ["NORTH", "WEST", "SOUTH", "EAST"])
d = ["NORTH", "WEST", "SOUTH", "SOUTH", "NORTH", "WEST", "EAST", "EAST", "NORTH", "EAST", "EAST", "WEST", "SOUTH", "SOUTH", "SOUTH"]
p dirReduc(d) # => ["NORTH", "WEST", "SOUTH", "EAST", "NORTH", "EAST", "SOUTH", "SOUTH", "SOUTH"]
##############################################
# опять другой подход, удаляем только то что следует после (то что взаимоудаляется и челик стоит на месте)
##############################################
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
#
# Вторая реализация
# def dirReduc(arr)
#   return arr if arr.uniq.size == arr.size
#
#   [%w(SOUTH NORTH), %w(WEST EAST)].each do |directions|
#     count = arr.count(directions[0]) < arr.count(directions[1]) ? arr.count(directions[0]) : arr.count(directions[1])
#     while count != 0
#       arr.delete_at(arr.index(directions[0]))
#       arr.delete_at(arr.index(directions[1]))
#       count -= 1
#     end
#   end
#
#   arr
# end