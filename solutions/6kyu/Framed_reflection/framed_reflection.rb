def mirror(text)
  string = ''
  string_arr = text.split(' ').map(&:reverse).join(' ').split(' ')
  mirror_size = string_arr.max_by(&:length).size + 4
  string_arr.each { |word| string << "\n* #{word}#{' ' * (mirror_size - word.size - 3)}*" }
  "#{'*' * mirror_size}#{string}\n#{'*' * mirror_size}"
end

mirror('Hello World') #=> "*********\n* olleH *\n* dlroW *\n*********"
