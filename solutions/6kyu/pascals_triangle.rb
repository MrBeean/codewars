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

# BEST practice for pascals-triangle
# def pascalsTriangle(n)
#    (1..n).each_with_object([]) do |i, a|
#      a << (1..i).map { |j| j == 1 ? 1 : (a.last[j-2] + a.last[j-1] rescue 1) }
#    end.flatten
# end
#
#  BEST practice for pascals-triangle-number-2
# def pascal(n)
#   a = [[1]]
#   (n - 1).times do
#     a << ([0] + a.last + [0]).each_cons(2).map { |a| a.reduce(:+) }
#   end
#   a
# end

p pascalsTriangle(2)
p pascalsTriangle(4)
