store = {
  "kiwi" => 1.25,
  "banana" => 0.5,
  "mango" => 4,
  "asparagus" => 9
}

# créer un hash avec valeur défaut 0
shopping_cart = Hash.new(0)

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
    puts "How many?"
    # récupère le input du user avec gets.chomp
    number_chosen = gets.chomp.to_i
    # adapter la ligne ci-dessous pour que ca marche avec un hash
    shopping_cart[item_chosen] += number_chosen
  else
    puts "Sorry, we don't have #{item_chosen}" unless item_chosen == 'quit'
  end
end

sum = 0

puts "-------TOTAL------"

shopping_cart.each do |element, quantity|
  prix_de_un_element = store[element]
  # ??? calculer le prix de la quantité d'elements
  prix_de_tous = prix_de_un_element * quantity
  sum += prix_de_tous
  puts "#{element}: #{quantity} X #{prix_de_un_element} = #{prix_de_tous}CHF"
end

# display / montrer le total

puts "------------------#{sum}"
puts "------------------"
