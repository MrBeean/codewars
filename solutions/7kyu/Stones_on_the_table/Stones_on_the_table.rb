def solution(stones)
  count = 0
  stones.split('').each_index { |x| count += 1 if stones[x] == stones[x+1] }
  count
end

p solution("RGGRGBBRGRR") #=> 3
