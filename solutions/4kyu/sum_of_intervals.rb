def archive_intervals(investigated_element, intervals)
  archived_array = []
  intervals.each do |arr|
    if (arr[0]..arr[1]).cover?(investigated_element[0]) || (arr[0]..arr[1]).cover?(investigated_element[1])
      investigated_element[0] = arr[0] >= investigated_element[0] ? investigated_element[0] : arr[0]
      investigated_element[1] = arr[1] <= investigated_element[1] ? investigated_element[1] : arr[1]
    end
    archived_array << investigated_element
  end
  archived_array
end

def sum_of_intervals(intervals)
  archived_array = []
  intervals.each do |arr|
    archived_array += archive_intervals(arr, intervals)
  end
  archived_array = archived_array.uniq
  last_check_array = []
  archived_array.each do |arr|
    last_check_array += archive_intervals(arr, archived_array)
  end
  last_check_array = last_check_array.uniq
  last_check_array.map! { |arr| arr[1] - arr[0] }

  if last_check_array.size == 1
    last_check_array[0]
  else
    last_check_array.inject(0, &:+)
  end
end

p sum_of_intervals([[1, 5]]) #=> 4
p sum_of_intervals([[1, 5], [6, 10]]) #=>  8
p sum_of_intervals([[1, 5], [1, 5]]) #=>  4
p sum_of_intervals([[1, 4], [7, 10], [3, 5]]) #=>  7

# BEST practise LOL, так изящно (
# def sum_of_intervals(intervals)
#   intervals.map{|a| (a[0]...a[1]).to_a }.flatten.uniq.size
# end
