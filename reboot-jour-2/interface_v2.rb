gift_list = ['Playstation 5', 'Surfboard', 'Tee Shirt', 'Nike Shoes']

puts 'Welcome to your christmas list! 🎄'

# on définit une méthode qui sait display n'importe quel array
def display_list(array)
  array.each_with_index do |list, index|
    puts "--#{index + 1}. #{list}--"
  end
end

action = nil
until action == 'quit'
  puts 'Which action [list|add|delete|quit]?'
  action = gets.chomp.downcase

  if action == 'list'
    # on utilise notre méthode pour montrer le contenu de gift_list (joliment!)
    display_list(gift_list)
  elsif action == 'add'
    puts 'Please type the name of the gift you want to add'
    new_gift = gets.chomp
    gift_list << new_gift
    puts "#{new_gift} was successfully added to your list."
    display_list(gift_list)
  elsif action == 'delete'
    display_list(gift_list)
    puts 'Which gift do you want to delete? Enter a number'
    number_to_delete = gets.chomp.to_i # number_to_delete = gets.chomp.to_i - 1
    index_to_delete = number_to_delete - 1
    puts "#{gift_list[index_to_delete]} was successfully deleted from your list."
    gift_list.delete_at(index_to_delete)
    display_list(gift_list)
  else
    puts 'Please enter an allowed action' unless action == 'quit'
  end
end

puts 'Goodbye :)'
