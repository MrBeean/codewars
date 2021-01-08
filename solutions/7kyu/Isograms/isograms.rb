def is_isogram(string)
  string.downcase.chars.map { |letter| string.downcase.count(letter) > 1 ? '*' : '' }.join.empty?
end

p is_isogram("Dermatoglyphics") #true
p is_isogram("dniybpwyyohbb") #false
p is_isogram("") #true
