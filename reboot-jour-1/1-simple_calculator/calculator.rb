def calculator(number1, number2, operator)
  if operator == '+'
    r = number1 + number2
  elsif operator == '-'
    r = number1 - number2
  elsif operator == 'x' || operator == '*'
    r = number1 * number2
  elsif operator == '/'
    # number1.fdiv(number2)
    r = number1.to_f / number2
  else
    return "Error - please enter one of the 4 allowed operators"
  end
  r # return result
end
