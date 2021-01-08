def dirReduc(arr)
  directions = {
    NORTH: 'SOUTH',
    SOUTH: 'NORTH',
    EAST: 'WEST',
    WEST: 'EAST'
  }

  i = 0
  count = arr.size
  while i <= count
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

a = %w[NORTH SOUTH SOUTH EAST WEST NORTH WEST]
p dirReduc(a) # => ["WEST"]
u = %w[NORTH WEST SOUTH EAST]
p dirReduc(u) # => ["NORTH", "WEST", "SOUTH", "EAST"])
d = %w[NORTH WEST SOUTH SOUTH NORTH WEST EAST EAST NORTH EAST EAST WEST SOUTH SOUTH SOUTH]
p dirReduc(d) # => ["NORTH", "WEST", "SOUTH", "EAST", "NORTH", "EAST", "SOUTH", "SOUTH", "SOUTH"]
