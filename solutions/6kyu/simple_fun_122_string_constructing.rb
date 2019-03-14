# TODO: решить
# https://www.codewars.com/kata/simple-fun-number-122-string-constructing
def constructing(string1, string2)
  count = 0

  return count if string1 == string2

  string = ''
  p string += string1
  count += 1

  # 1 Сравнить две строки
  # 2 при совпадении возвращаем 0
  # 3 Ввести переменную,
  # 4 записать туда первую строку, счетчик +1
  # 5 Сравнить вторую строку с новой, если совпали выход с счетчиком,
  # если символы не совпадают с началом строки 2
  # удалять по одному символу из приплюсованного элемента до тех пор
  # пока не совпадет, счетчик +1
  # 6 возврат к 4
  #
  #
  #
  # А что если вначале удалять по одному символу а после сравнивать
  p '-----COUNT-RESULT------'
  p count
end

constructing('abab', 'abbaab')

# 'aba' -> 'abaa'
# 'aba' -> 'abaaba' -> 'abaab' -> 'abaa'

# BEST practice
#
