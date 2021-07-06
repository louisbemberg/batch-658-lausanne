gift_list = []

puts 'Welcome to your christmas list! 🎄'

action = nil
until action == 'quit'
  puts 'Which action [list|add|delete|quit]?'
  action = gets.chomp.downcase

  if action == 'list'
    # itérer sur gift_list et imprimer joliment le contenu (avec des numéros) => each_with_index
  elsif action == 'add'
    # demander le nom du cadeau a ajouter a la liste
    # récupérer l'input du user
    # rajouter ce nouveau dans gift list
    # feedback que l'opération a bien marché
  elsif action == 'delete'
    # afficher automatiquement la liste
    # demander a l'utilisateur le quel il veut supprimer demander le numéro
    # supprimer le cadeau qui correspond au numéro donné
    # confimer a l'utilisateur que la suppression a marché
  else
    puts 'Please enter an allowed action' unless action == 'quit'
  end
end

puts 'Goodbye :)'
