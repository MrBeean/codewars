# Новый метод задать шаг при создании массива 1.step(7, 2) => [1, 3, 5, 7]
# BEST practice
# вычисление суммы всех элементов, через формулу
# (sequence[0] + sequence[-1]) * (sequence.size + 1) / 2

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

# BEST practice
# def find_missing(sequence)
#   (sequence[0] + sequence[-1]) * (sequence.size + 1) / 2 - sequence.sum
# end
