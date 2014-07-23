def word_calc(equation)
  operator = equation.scan(/(plus)|(minus)|(times)/).join
  numbers = equation.scan(/[0-9]/)
  if operator == "plus"
    solution = numbers[0].to_i + numbers[1].to_i
  elsif operator == "minus"
    solution = numbers[0].to_i - numbers[1].to_i
  elsif operator == "times"
    solution = numbers[0].to_i * numbers[1].to_i
  end

  solution

end
