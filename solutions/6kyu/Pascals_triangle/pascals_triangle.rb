def calculate_row(n)
  return [1] if n == 1

  previous = calculate_row(n - 1)

  ret = []

  (previous.length - 1).times do |i|
    ret.push (previous[i] + previous[i + 1])
  end

  [1, ret, 1].flatten
end

def pascalsTriangle(n)
  pascal_array = []
  1.upto(n) { |i| pascal_array << calculate_row(i) }
  pascal_array.flatten
end

p pascalsTriangle(2)
p pascalsTriangle(4)
