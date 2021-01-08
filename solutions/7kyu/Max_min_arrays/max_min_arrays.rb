def solve(arr)
  arr.empty? ? [] : ([] << arr.sort!.pop << arr.reverse!.pop << solve(arr)).flatten!.compact
end

p solve([15,11,10,7,12]) #=> [15,7,12,10,11]
p solve([91,75,86,14,82]) #=> [91,14,86,75,82]

