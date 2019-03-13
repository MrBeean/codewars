def find_next_number(array)
  i = 1
  while i < array.size
    new_s = array.dup
    first_element = array.take(i).join.to_i
    new_s.shift(i)
    next_element = new_s.take(i).join.to_i
    next_update_element = new_s.take(i + 1).join.to_i
    number = first_element if first_element + 1 == next_element ||
                               first_element + 1 == next_update_element ||
                               first_element + 2 == next_element ||
                               first_element + 2 == next_update_element
    i += 1
  end
  number
end

def missing s
  s = s.each_char.to_a.map(&:to_i)
  array = []
  s.size.times do |i|
    array << find_next_number(s)
    s.shift(array[i].to_s.size) if array[i].to_s.size < s.size
    if array[i].to_s.size == s.size
      array << s.join.to_i
      s = [nil]
    end
  end

  array.reject! { |c| c == 0 || c == nil }
  full_range = (array.first..array.last).to_a
  (full_range - array).empty? || (full_range - array).size >= 2 ? -1 : (full_range - array).first
end

p missing("123567")#,4)
p missing("1234567")#,4)
p missing("123467891011")#,4)
p missing("998999100010011003")#,1002)
p missing("8990919395")#,-1)
p missing("9978997999809982")#,1002)
p missing("9899101102")#,100)

# BEST practice
# def missing s
#   (1..(s.size/2)).each do |i|
#     (i..i+1).each do |j|
#       ss, sss, s1, s2 = s.dup, s.dup, s[0,i], s[-j..-1]
#       if ((s2.to_i-s1.to_i)*j) >= s.size && (s1..s2).one?{ |n| ss.delete_prefix!(n.to_s).nil? }
#         (s1..s2).each{ |n| return n.to_i if sss.delete_prefix!(n.to_s).nil? }
#       end
#     end
#   end
#   -1
# end
