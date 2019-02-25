# https://ru.wikipedia.org/wiki/ROT13

def rot13(string)
  string.tr("A-Za-z", "N-ZA-Mn-za-m")
end

p rot13('Hello')
p rot13('Uryyb')

# BEST practice, с большим уровнем понимания
# def rot13(string)
#   alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPGRSTUVWXYZ'
#   rot_alphabet = 'nopqrstuvwxyzabcdefghijklmNOPGRSTUVWXYZABCDEFGHIJKLM'
#   string.tr(alphabet, rot_alphabet)
# end