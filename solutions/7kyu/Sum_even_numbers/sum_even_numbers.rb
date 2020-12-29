def sum_even_numbers(arr)
  arr.map { |num| num % 2 == 0 ? num : 0 }.sum
end

p sum_even_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) #=30
p sum_even_numbers([]) #= 0
p sum_even_numbers([-1, 22.4, -2]) #= -2
