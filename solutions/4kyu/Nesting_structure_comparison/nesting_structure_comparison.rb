class Array
  def same_structure_as(array, result = [])
    each_with_index do |element, i|
      count_element = element.class == Array ? element.size : element.to_s.size
      count_array_i = array[i].class == Array ? array[i].size : array[i].to_s.size
      if array[i].class == Array &&
         element.class == Array &&
         count_element == count_array_i
        element.same_structure_as(array[i], result)
        result << true
      elsif count_element == count_array_i
        result <<  true
      else
        result <<  false
      end
    end

    result << false if array.class != Array
    result.flatten.include?(false) ? false : true
  end
end

# should return true
p [].same_structure_as(1)
p [1, 1, 1].same_structure_as([2, 2, 2])
p [[[], []]].same_structure_as([[1, 1]])
