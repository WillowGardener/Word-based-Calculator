def word_calc(num1, num2, operator)
    if operator == "plus"
      operators = ['+']
      solution =   operators.map {|o| num1.to_i.public_send o,num2.to_i }
    elsif operator == "minus"
      operators = ['-']
      solution =   operators.map {|o| num1.to_i.public_send o,num2.to_i }
    elsif operator == "times"
      operators = ['*']
      solution =   operators.map {|o| num1.to_i.public_send o,num2.to_i }
    elsif operator == "divided"
      operators = ['/']
      solution =   operators.map {|o| num1.to_i.public_send o,num2.to_i }
    elsif operator == "power"
      operators = ['**']
      solution =   operators.map {|o| num1.to_i.public_send o,num2.to_i }
    end
  solution.join.to_i

end

def number_reader(equation)
  numbers = equation.scan(/[0-9]{1,}/)
  operator = equation.scan(/(plus|minus|times|divided|power)/)
  total = 0;
  operator.each do |i|
      total += word_calc(numbers[0], numbers[1], i.join)
    numbers.delete(numbers[1])
    numbers.delete(numbers[0])
  end
  total
end



