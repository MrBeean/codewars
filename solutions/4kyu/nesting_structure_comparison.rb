# https://www.codewars.com/kata/nesting-structure-comparison/train/ruby

class Array
  def same_structure_as(array)
    self.each_with_index.map do |element, i|
      p element
      p array[i]
      p count_element = element.class == Array ? element.size : element.to_s.size
      p count_array_i =  array[i].class == Array ? array[i].size : array[i].to_s.size
      if array[i].class == Array && element.class == Array && count_element == count_array_i
        p '*********************************'
        element.same_structure_as(array[i])
        true
      elsif count_element == count_array_i
        p '---------------------------------'
        true
      else
        p '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^'
        return false
      end
    end
  end
end


# should return true
p [1,[1,1]].same_structure_as([2,[2]])
# [[[],[]]].same_structure_as([[1,1]])

# FIRST attempt
# class Array
#   def same_structure_as(array)
#     self.each_with_index.map do |element, i|
#       return false if element.size != array[i].size
#       element.same_structure_as(array[i]) if element.class == Array && element.size > 1
#     end
#     true
#   end
# end