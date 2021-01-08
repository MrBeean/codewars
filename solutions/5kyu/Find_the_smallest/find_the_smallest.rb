def smallest(n)
  new_array = n.to_s.split('')
  array = n.to_s.split('')
  all_array = []

  array.each_with_index do |number, index|
    number = new_array.delete_at(index)
    array.each_with_index do |_el, i|
      all_array << [new_array.insert(i, number).join('').to_i, index, i]
      new_array.delete_at(i)
    end
    new_array = n.to_s.split('')
  end

  all_array.min_by { |x| [x[0], x[1], x[2]] }
end

p smallest(261_235) #--> [126235, 2, 0] or (126235, 2, 0) or "126235, 2, 0"
p smallest(296_837) #--> [239687, 4, 1
p smallest(935_855_753) #--> [358557539, 0, 8]
