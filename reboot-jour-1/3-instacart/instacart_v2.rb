store = {
  "kiwi" => 1.25,
  "banana" => 0.5,
  "mango" => 4,
  "asparagus" => 9
}

# créer un hash avec valeur défaut 0
shopping_cart = {}

puts "--------------------"
puts 'Welcome to Instacart'
puts "--------------------"

item_chosen = nil

until item_chosen == 'quit'
  puts "In our store today:"
  store.each do |key, value|
    puts "#{key}: #{value}€"
  end

  puts "Which item? (or 'quit' to checkout)"
  item_chosen = gets.chomp.downcase

  if store.include?(item_chosen)
    # demander combien il en veut
    # récupère le input du user avec gets.chomp
    # adapter la ligne ci-dessous pour que ca marche avec un hash
    shopping_cart << item_chosen
  else
    puts "Sorry, we don't have #{item_chosen}" unless item_chosen == 'quit'
  end
end

sum = 0

# le each a besoin de 2 itérateurs> kiwi: 2 X 1.25€ = 2.5€
> mango: 3 X 4€ = 12€
> TOTAL: 14.5€
shopping_cart.each do |element|
  prix_de_un_element = store[element]
  # ??? calculer le prix de la quantité d'elements
  sum += prix_de_un_element
end

# display / montrer le total
puts "-------TOTAL------"
puts "-------#{sum}-----"
puts "------------------"
