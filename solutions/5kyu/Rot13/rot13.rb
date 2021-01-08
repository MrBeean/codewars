def rot13(string)
  string.tr('A-Za-z', 'N-ZA-Mn-za-m')
end

p rot13('Hello')
p rot13('Uryyb')
