require_relative 'calculator'

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

  # BACKEND
  result = calculator(number1, number2, operator)

  #   montrer la réponse a l'utilisateur
  puts "Result: #{result}" if result != nil
  #   demander si on veut calculer de nouveau ou pas? Y/N
  puts "Do you want to calculate again? [Y/N]"
  answer = gets.chomp.upcase
  # LOOP FINIT ICI
end
