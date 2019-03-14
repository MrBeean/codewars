def no_boring_zeros(num)
  # return 0 if num == 0
  num.to_s.gsub(/0+$/, '').to_i
end

p no_boring_zeros(0)

# BEST practice
# def no_boring_zeros(num)
#   # Place code - get rid of zeros - receive bacon
#   num.to_s.gsub(/[0]+$/,"").to_i
# end
