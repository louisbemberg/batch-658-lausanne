# remodeler le magasin pour inclure prix ET stock (nested hashes)
store = {
  'kiwi' => { 'prix' => 1.25, 'stock' => 40 },
  'banana' => { 'prix' => 0.5, 'stock' => 12 },
  'mango' => { 'prix' => 4, 'stock' => 20 },
  'asparagus' => { 'prix' => 9, 'stock' => 150 }
}

shopping_cart = Hash.new(0)

puts "--------------------"
puts 'Welcome to Instacart'
puts "--------------------"

item_chosen = nil

until item_chosen == 'quit'
  puts "In our store today:"
  store.each do |key, nested_hash|
    # rajouter information sur le stock des aliments
    puts "#{key}: #{nested_hash['prix']}€ (#{nested_hash['stock']} en stock)"
  end

  puts "Which item? (or 'quit' to checkout)"
  item_chosen = gets.chomp.downcase

  if store.include?(item_chosen)
    puts "How many?"
    number_chosen = gets.chomp.to_i
    # check si il en reste suffisamment
    if number_chosen <= store[item_chosen]['stock']
      # si oui:
      shopping_cart[item_chosen] += number_chosen
      # retirer du stock au store
      store[item_chosen]['stock'] -= number_chosen
      #si non
    else
      # message qui dit qu'on en a pas assez => dire la quantité dispo
      puts "Sorry, we only have #{store[item_chosen]['stock']} #{item_chosen}(s) in stock"
    end
  else
    puts "Sorry, we don't have #{item_chosen}" unless item_chosen == 'quit'
  end
end

sum = 0

puts "-------TOTAL------"

shopping_cart.each do |element, quantity|
  prix_de_un_element = store[element]['prix']
  prix_de_tous = prix_de_un_element * quantity
  sum += prix_de_tous
  puts "#{element}: #{quantity} X #{prix_de_un_element} = #{prix_de_tous}CHF"
end


puts "------------------#{sum}"
puts "------------------"
