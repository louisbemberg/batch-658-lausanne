# créer une (constante) hash du magasin (prix, article)
store = {
  "kiwi" => 1.25,
  "banana" => 0.5,
  "mango" => 4,
  "asparagus" => 9
}

# créer un shopping cart / panuier (array?)
shopping_cart = []
# WELCOME MESSAGE
puts "--------------------"
puts 'Welcome to Instacart'
puts "--------------------"

# créer variable qui permet d'entrer dans le loop (nil)
# LOOP COMMENCE ICI "jusqu'à ce qu'on me dise 'quit'"
item_chosen = nil

until item_chosen == 'quit'
  # message pour dire ce qu'il y a dans le store
  puts "In our store today:"
  #  itérer sur le hash pour montrer son contenu
  store.each do |key, value|
    "kiwi: 1.25€"
    puts "#{key}: #{value}€"
  end
  #   demander quel item le user veut acheter, sauver dans variable
  puts "Which item? (or 'quit' to checkout)"
  item_chosen = gets.chomp.downcase
  #   vérifier que l'item choisi est dans le magasin
  if store.include?(item_chosen) # store.key?(item_chosen) ## store[item_chosen] != nil
    shopping_cart << item_chosen # shopping_cart.push(item_chosen)
  # ajouter element au panier
  else
  # message sorry we don't have xxx
    puts "Sorry, we don't have #{item_chosen}" unless item_chosen == 'quit'
  end
  # LOOP FINIT ICI
end

# déclarer un somme de départ de 0
sum = 0
# itérer sur notre panier

shopping_cart.each do |element|
  # trouver le prix de chaque élément
  prix_de_un_element = store[element]
  # ajouter le prix de l'élément à notre somme
  sum += prix_de_un_element
end

# display / montrer le total
puts "-------TOTAL------"
puts "-------#{sum}-----"
puts "------------------"

