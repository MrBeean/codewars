# https://www.codewars.com/kata/simple-number-sequence/train/ruby
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
    if array[i].to_s.size == s.size
      array.pop
    end

  s.shift(array[i].to_s.size) if array[i].to_s.size < s.size

  end
  p array
  p s
  p '--------------------------'

  array.compact!
  array << s.join.to_i
  full_range = (array.first..array.last).to_a
  (full_range - array).size
  p array
  p full_range
  # p (full_range - array).empty? || (full_range - array).size >= 2 ? -1 : (full_range - array).first
  p '================'
end

# missing("134567")#,4)
# missing("1234567")#,4)
# missing("123467891011")#,4)
# missing("998999100010011003")#,1002)
# missing("8990919395")#,-1)
# missing("9978997999809982")#,1002)
missing("9899101102")#,100)
