def find_missing(sequence)
  step = if sequence[1] - sequence[0] == sequence[2] - sequence[1]
           sequence[1] - sequence[0]
         else
           sequence[2] - sequence[1]
         end

  full_sequence = sequence[0].step(sequence[-1], step).to_a
  (full_sequence - sequence).first
end

find_missing([1, 2, 3, 4, 6, 7, 8, 9]) #=> 5
find_missing([1, 3, 4, 5, 6, 7, 8, 9]) #=> 2
