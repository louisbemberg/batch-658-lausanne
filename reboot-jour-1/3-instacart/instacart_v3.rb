# remodeler le magasin pour inclure prix ET stock (nested hashes)
store = {
  "kiwi" => 1.25,
  "banana" => 0.5,
  "mango" => 4,
  "asparagus" => 9
}

shopping_cart = Hash.new(0)

puts "--------------------"
puts 'Welcome to Instacart'
puts "--------------------"

item_chosen = nil

until item_chosen == 'quit'
  puts "In our store today:"
  store.each do |key, value|
    # rajouter information sur le stock des aliments
    puts "#{key}: #{value}€"
  end

  puts "Which item? (or 'quit' to checkout)"
  item_chosen = gets.chomp.downcase

  if store.include?(item_chosen)
    puts "How many?"
    number_chosen = gets.chomp.to_i
    # check si il en reste suffisamment
      # si oui:
      shopping_cart[item_chosen] += number_chosen
      # retirer du stock au store
      #si non
      # message qui dit qu'on en a pas assez => dire la quantité dispo
  else
    puts "Sorry, we don't have #{item_chosen}" unless item_chosen == 'quit'
  end
end

sum = 0

puts "-------TOTAL------"

shopping_cart.each do |element, quantity|
  prix_de_un_element = store[element]
  prix_de_tous = prix_de_un_element * quantity
  sum += prix_de_tous
  puts "#{element}: #{quantity} X #{prix_de_un_element} = #{prix_de_tous}CHF"
end


puts "------------------#{sum}"
puts "------------------"
