# welcome the user
puts "Welcome to the race!"
# créer cagnotte/portefeuille (100)
wallet = 100
# créer liste de chevaux (array de strings)
horses = ['Nemo', 'Dory', 'Spark', 'Buzz', 'Epona']

# LOOP COMMENCE ICI
answer = nil # answer = 'y'
while answer != 'N' && wallet > 0
  #   montrer a l'utilisateur la liste des chevaux disponibles
  puts "Here are the horses of the day"
  horses.each do |horse|
    puts "*** #{horse} ***"
  end

  chosen_horse = nil
  #   checker que le cheval choisi existe (if + logique pour checker)
  loop do
    # demander a l'utilisateur de choisir un cheval
    puts "Please choose a horse"
    chosen_horse = gets.chomp.capitalize

    if horses.include?(chosen_horse)
      puts "You chose #{chosen_horse}."
      break
    else
      puts "That horse doesn't exist"
    end
  end
  #   demander combien d'argent on parie
  bet = nil
  loop do
    # demander a l'utilisateur de choisir un cheval
    puts "How much do you want to bet. Your balance is #{wallet}"
    bet = gets.chomp.to_i

    if bet <= wallet
      puts "You bet #{bet}CHF."
      break
    else
      puts "Not enough money"
    end
  end

  #   quel cheval a gagné (on choisit au hasard)
  winning_horse = horses.sample

  #   if cheval choisi est égal au cheval gagnant
  if chosen_horse == winning_horse
  #     montrer le resultat de la course (qui a gagné vs. qui il a choisi)
    puts "#{winning_horse} won. You Win!!!!"
  #     gagner de l'argent (mettre a jour la cagnotte)
    wallet += bet
  else
  #     perdu
    puts "#{winning_horse} won. You Lose!!!!"
  #     perdre de l'argent (mettre a jour la cagnotte)
    wallet -= bet
  end
  puts "Your new balance is #{wallet}"
  #   proposer de rejouer avec Y|N
  puts "Play again? [Y|N]"
  # LOOP FINIT ICI
  answer = gets.chomp.upcase
end

# remercier l'utilsateur d'avoir joué
