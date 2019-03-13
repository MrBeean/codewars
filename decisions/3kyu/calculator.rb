# https://www.codewars.com/kata/calculator/train/ruby

class Calculator
  def priority(value)
    return 1 if value == '+' || value == '-'
    return 2 if value == '*' || value == '/'
  end

  def calculate(expression_array)
    while expression_array.size >= 3
      expression = expression_array.slice!(0..2)
      case expression[1]
      when '+'
        result = expression[0].to_i + expression[2].to_i
      when '-'
        result = expression[0].to_i - expression[2].to_i
      when '*'
        result = expression[0].to_i * expression[2].to_i
      when '/'
        result = expression[0].to_i / expression[2].to_i
      end

      expression_array.insert(0, result.to_s)
    end
    result
  end

  def evaluate(string)
    arr = string.chars.map { |ch| ch == ' ' ? next : ch  }.compact
    # Найдем приоритетность и сохраним порядок выполнения математических операций, согласно индекса
    # считаем, заменяем полученной цифрой, первый вырезанный индекс
    #  рекурсивно вызываем этот же метод
    if arr.map { |elem| priority(elem) }.compact.select{ |elem| elem == 2 }.empty?
      p calculate(arr)
    else

    end
    arr.each_with_index do |element, index|
      element
    end
    # p '+'.ord
    # p '-'.ord
    # p '*'.ord
    # p '/'.ord
    # p 43.chr
    # p 45.chr
    # p 42.chr
    # p 47.chr
  end
end


calc = Calculator.new

# calc.evaluate("4 + 5")#, 9)
calc.evaluate("4 + 5 - 6")#, 34)
# calc.evaluate("4 - 5")#, -1)