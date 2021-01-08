def solve(a, b)
  ((a.split('').delete_if { |v| v =~ /["#{b}"]/ }) + (b.split('').delete_if { |v| v =~ /["#{a}"]/ })).join('')
end

p solve("xyab", "xzca") #ybzc"
p solve("xyabb", "xzca") #"ybbzc"
