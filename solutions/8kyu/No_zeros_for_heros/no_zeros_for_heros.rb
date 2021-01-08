def no_boring_zeros(num)
  # return 0 if num == 0
  num.to_s.gsub(/0+$/, '').to_i
end

p no_boring_zeros(0)
