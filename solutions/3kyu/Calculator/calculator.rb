class Calculator
  def evaluate(string)
    index = string.split.index { |index| index == '*' || index == '/' } ||
            string.split.index { |index| index == '+' || index == '-' }
    return string.to_f if index.nil?

    expression_array = string.split.values_at(index - 1, index + 1).map(&:to_f)
    operation = string.split.values_at(index)[0]
    string = string.split
    string[index] = expression_array.inject(operation).to_s
    string[index - 1] = string[index + 1] = nil
    evaluate(string.compact!.join(' '))
  end
end

calc = Calculator.new
calc.evaluate('4 + 5') # , 9)
calc.evaluate('4 - 5') # , -1)

