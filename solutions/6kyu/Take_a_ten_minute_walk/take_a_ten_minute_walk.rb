def isValidWalk(walk)
  direction = {
    'n': -1,
    's': 1,
    'w': -2,
    'e': 2
  }
  return false if walk.size < 10 || walk.size > 10

  position = 0
  walk.each { |direct| position += direction[direct.to_sym] }
  position.zero?
end

p isValidWalk(%w[n s n s n s n s n s])
p isValidWalk(%w[w e w e w e w e w e w e])
