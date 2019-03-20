def wave(str)
  i = 0
  wave = []
  while i < str.size do
    string = str.downcase.split('')
    string[i] = string[i].upcase
    wave << string.join unless string[i] == ' '
    i += 1
  end
  wave
end

wave('Hello') #=> ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

# BEST practice
# def wave(str)
#   result = []
#   chars = str.downcase.chars
#   chars.each_with_index do |char, idx|
#     next if char == " "
#     result << str[0...idx] + char.upcase + str[idx+1..-1]
#   end
#   result
# end