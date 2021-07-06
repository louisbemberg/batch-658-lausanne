# Question 1
# J'ai 3 voitures. elles ont toutes une couleur, une marque, et une année.
# comment puis-je les avoir toutes dans une seule variable?


# car1 = {
#   marque: "Mercedes",
#   couleur: "rouge",
#   année: 1990
# }
# car2 = {
#   marque: "Mercedes",
#   couleur: "rouge",
#   année: 1990
# }
# car3 = {
#   marque: "Mercedes",
#   couleur: "rouge",
#   année: 1990
# }
# cars = [car1, car2, car3]
# # Question 2
# # Voici mes animaux:

pets = {
  'Rookie' => 'Dog',
  'Garfield' => 'Cat',
  'Milka' => 'Cow',
  'Rex' => 'Chien'
}

# # Comment checker si Milka est un de mes animaux? 3 solutions possibles!
# p pets.key?('Milka')
# pets.values
pets['Rex']

# if pets.
#   puts "je carresse Rex"
# else
#   puts "Mince il est ou Rex"
# end

# # Question 3
# # quel est le problème avec ce code, selon vous?

# clothes = ["t-shirt", "shoes", "beanie", "socks", "jacket"]
# clothes.each_with_index do |cloth, index|
#   "***#{index}. #{cloth}***"
# end

# # Question 4
# # Nous avons le hash suivant
# weird_hash = {
#   'Le Wagon' => { campus: 'Lausanne', country: ['Suisse', 'Confédération Hélvétique'] }
#   'Lausanne' => 'coucou'
# }
# # # comment obtenir Lausanne? et 'Confédération Hélvétique' ?
# weird_hash['Le Wagon'][:campus]
# weird_hash['Le Wagon'][:country][1]



# # Question 5
# # Est-ce que le code ci-dessous va fonctionner? Que faut-il changer?
# bobs_age = 0
# until bobs_age == 18
#   puts 'Happy birthday Bob!'
#   bobs_age += 1
# end

# # Question 6
# # cette loop va-t-elle fonctionner?
# # je veux que les answers "Y", "y", "Yes", "yes" marchent. comment changer?
# answer = 'yes'
# while answer[0].downcase == 'y'
#   puts 'Would you like to loop again?'
#   answer = gets.chomp
# end

# # Question 7
# # quel est le(s) bug(s) dans le code suivant?

# fruits = ['apple', 'banana', 'mango']

# answer = nil
# until answer == 'quit'
#   p fruits
#   puts "Which fruit would you like to buy?"
#   answer = gets.chomp
#   if fruits.include?(answer)
#     puts "#{answer} was added to your bag!"
#   else
#     puts "Sorry, we don't have any #{answer}." unless answer == 'quit'
#   end
# end

# # Question 8
# # nous avons le hash suivant
# basket = {
#   'carrots' => { quantity: 4, unit_price: 10 },
#   'eggs' => { quantity: 12, unit_price: 2 },
#   'tomatoes' => { quantity: 8, unit_price: 3 }
# }

# # prix_carrots = basket['carrots'][:quantity] * basket['carrots'][:unit_price]
# # prix_eggs = basket['eggs'][:quantity] * basket['eggs'][:unit_price]

# # puts prix_carrots + prix_eggs
# sum = 0
# basket.each do |key, nested_hash|
#   sum += nested_hash[:quantity] * nested_hash[:unit_price]
# end
# puts sum














# # Comment calculer le prix total à payer?

