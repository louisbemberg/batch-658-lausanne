# changer gift_list pour une meilleure structure
# option 1: un hash à la place d'un array
{ "PS5" => true }
gift_list = ['Playstation 5', 'Surfboard', 'Tee Shirt', 'Nike Shoes']

puts 'Welcome to your christmas list! 🎄'

def display_list(array)
  array.each_with_index do |list, index|
    puts "--#{index + 1}. #{list}--"
  end
end


# créer une nouvelle méthode qui sait display des hash
# on veut voir: 1) index 2) nom du gift 3) checkbox
# pour passer de boolean à checkbox on peut utiliser un if
# hash.each_with_index { |(k, v), i}

action = nil
until action == 'quit'
  puts 'Which action [list|add|delete|quit]?'
  action = gets.chomp.downcase
  if action == 'list'
    display_list(gift_list)
  elsif action == 'add'
    puts 'Please type the name of the gift you want to add'
    new_gift = gets.chomp
    # adapter cette ligne pour de la syntaxe hash
    gift_list << new_gift
    puts "#{new_gift} was successfully added to your list."
    display_list(gift_list)
  elsif action == 'delete'
    display_list(gift_list)
    puts 'Which gift do you want to delete? Enter a number'
    number_to_delete = gets.chomp.to_i # number_to_delete = gets.chomp.to_i - 1
    index_to_delete = number_to_delete - 1
    # étape supplémentaire: réussir à connecter le numéro donné au hash
    puts "#{gift_list[index_to_delete]} was successfully deleted from your list."
    # utiliser la syntaxe de hash pour supprimer le cadeau
    gift_list.delete_at(index_to_delete)
    display_list(gift_list)
  # elsif mark
    # montrer la liste (appeler la nouvelle méthode)
    # demander le numéro du cadeau à marquer
    # récupérer la clé qui correspond à ce numéro
    # marquer le cadeau en question ()
    # mettre une phrase pour dire que le cadeau est marqué

  else
    puts 'Please enter an allowed action' unless action == 'quit'
  end
end

puts 'Goodbye :)'
