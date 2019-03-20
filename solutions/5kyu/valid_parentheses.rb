# Рекурсия, методы slice и gsub

def valid_parentheses(string)
  brackets = string.gsub(/[\w ]/, '').split(//)

  return true if brackets.empty?
  return false if brackets.size < 2 || brackets.shift == ')' || brackets.index(')').nil?

  brackets.slice!(brackets.index(')'))
  valid_parentheses(brackets.join)
end

# p valid_parentheses("  (") #=> false
# p valid_parentheses("(test") #=> false
# p valid_parentheses("") #=> true
# p valid_parentheses("hi())(") #=> false
# p valid_parentheses("hi(hi)()") #=> true
# p valid_parentheses("b(r(mimy") #=> false

# BEST practice
# def valid_parentheses(string)
#  str = string.delete("^()")
#  while str.gsub!("()",''); end
#  str == ''
# end
#
# def valid_parentheses(string)
#   open = 0
#   string.chars.each do |c|
#     open += 1 if c == "("
#     open -= 1 if c == ")"
#     return false if open < 0
#   end
#   open == 0
# end
