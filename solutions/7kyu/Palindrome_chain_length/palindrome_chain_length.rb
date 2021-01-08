def palindrome_chain_length(number)
  count(number, 0)
end

def count(number, iterator)
  p number
  number == number.to_s.reverse.to_i ? iterator : count(number.to_s.reverse.to_i + number, iterator += 1)
end

p palindrome_chain_length(87) #= 4
