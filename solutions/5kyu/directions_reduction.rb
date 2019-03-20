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
      i > 1 ? i -= 1 : i = 0
    else
      i += 1
    end
  end
end

a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
p dirReduc(a) # => ["WEST"]
u=["NORTH", "WEST", "SOUTH", "EAST"]
p dirReduc(u) # => ["NORTH", "WEST", "SOUTH", "EAST"])
d = ["NORTH", "WEST", "SOUTH", "SOUTH", "NORTH", "WEST", "EAST", "EAST", "NORTH", "EAST", "EAST", "WEST", "SOUTH", "SOUTH", "SOUTH"]
p dirReduc(d) # => ["NORTH", "WEST", "SOUTH", "EAST", "NORTH", "EAST", "SOUTH", "SOUTH", "SOUTH"]

# BEST practice
# OPPOSITE = {
#   "NORTH" => "SOUTH",
#   "SOUTH" => "NORTH",
#   "EAST"  => "WEST",
#   "WEST"  => "EAST"
# }
#
# def dirReduc(arr)
#   stack = []
#   arr.each do |dir|
#     OPPOSITE[dir] == stack.last ? stack.pop : stack.push(dir)
#   end
#   stack
# end