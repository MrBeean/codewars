def wave(str)
  i = 0
  wave = []
  while i < str.size
    string = str.downcase.split('')
    string[i] = string[i].upcase
    wave << string.join unless string[i] == ' '
    i += 1
  end
  wave
end

wave('Hello') #=> ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
