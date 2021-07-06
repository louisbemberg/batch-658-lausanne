# require la gemme nokogiri

gift_list = {
  'PlayStation 5' => false,
  'Surfboard' => false,
  'Tee Shirt' => true,
  'Nike Shoes' => false
}


puts 'Welcome to your christmas list! 🎄'

def display_list(array)
  array.each_with_index do |list, index|
    puts "--#{index + 1}. #{list}--"
  end
end

# créer une nouvelle méthode qui sait display des hash
# on veut voir: 1) index 2) nom du gift 3) checkbox
# pour passer de boolean à checkbox on peut utiliser un if
# hash.each_with_index { |(k, v), i| }

def display_hash(hash)
  hash.each_with_index do |(gift, value), index|
    checkbox = value ? "[X]" : "[ ]"
    puts "#{index + 1} - #{checkbox} #{gift}"
  end
end

def display_hash(hash)
  hash.each_with_index do |(gift, value), index|
    if value
      puts "#{index + 1} - [X] #{gift}"
    else
      puts "#{index + 1} - [ ] #{gift}"
    end
  end
end

action = nil
until action == 'quit'
  puts 'Which action [list|add|delete|mark|scrape|quit]?'
  action = gets.chomp.downcase
  if action == 'list'
    display_hash(gift_list)
  elsif action == 'add'
    puts 'Please type the name of the gift you want to add'
    new_gift = gets.chomp
    gift_list[new_gift] = false
    puts "#{new_gift} was successfully added to your list."
    display_hash(gift_list)
  elsif action == 'delete'
    display_hash(gift_list)
    puts 'Which gift do you want to delete? Enter a number'
    number_to_delete = gets.chomp.to_i # number_to_delete = gets.chomp.to_i - 1
    index_to_delete = number_to_delete - 1
    array_of_keys = gift_list.keys # ["PlayStation 5", "Surfboard", "Tee Shirt", "Nike Shoes"]
    key_to_delete = array_of_keys[index_to_delete]
    gift_list.delete(key_to_delete)
    puts "#{key_to_delete} was successfully deleted from your list."
    display_hash(gift_list)
  elsif action == 'mark'
    display_hash(gift_list)
    # demander le numéro du cadeau à marquer
    puts 'Which gift do you want to mark? Enter a number'
    number_to_mark = gets.chomp.to_i
    index_to_mark = number_to_mark - 1
    # récupérer la clé qui correspond à ce numéro
    array_of_keys = gift_list.keys
    key_to_mark = array_of_keys[index_to_mark]
    # marquer le cadeau en question ()
    # gift_list[key_to_mark] = true
    gift_list[key_to_mark] = !gift_list[key_to_mark]
    # mettre une phrase pour dire que le cadeau est marqué
    display_hash(gift_list)
  elsif action == 'scrape'
    # demander a l'utilisateur ce qu'on veut chercher en ligne
    # récupérer l'input
    # SCRAPING MAGIC

    # remplir un array de suggestions grace a notre scraping magic
    # display un nombre x de suggestions
    # laisser l'utilisateur choisir un numéro de suggestion
    # ajouter la suggestion a la christmas list
  else
    puts 'Please enter an allowed action' unless action == 'quit'
  end
end

puts 'Goodbye :)'
