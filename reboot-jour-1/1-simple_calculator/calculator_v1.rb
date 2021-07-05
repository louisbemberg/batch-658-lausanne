# LOOP COMMENCE ICI
answer = nil

while answer != "N"
  #   demander un nombre a l'utilisateur, sauvegarder dans une variable .to_i
  puts 'Please enter your first number'
  number1 = gets.chomp.to_i
  #   demander un 2e nombre a l'utilisateur, sauvegarder dans une variable .to_i
  puts 'Please enter your second number'
  number2 = gets.chomp.to_i
  #   demander un opérateur a l'utilisateur, sauvegarder dans une variable
  puts 'Please enter your operator?'
  operator = gets.chomp

  #   if statement dépendant de l'opérateur
  if operator == '+'
    result = number1 + number2
  elsif operator == '-'
    result = number1 - number2
  elsif operator == 'x' || operator == '*'
    result = number1 * number2
  elsif operator == '/'
    # number1.fdiv(number2)
    result = number1.to_f / number2
  else
    puts "Error - please enter one of the 4 allowed operators"
  end
  #   montrer la réponse a l'utilisateur
  puts "Result: #{result}" if result != nil
  #   demander si on veut calculer de nouveau ou pas? Y/N
  puts "Do you want to calculate again? [Y/N]"
  answer = gets.chomp.upcase
  # LOOP FINIT ICI
end



















