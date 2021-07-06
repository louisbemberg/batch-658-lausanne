# imprimer message d'accueil
puts "Welcome to your christmas list! 🎄"

action = nil
until action == 'quit'
  puts 'Which action [list|add|delete|quit]?'
  action = gets.chomp.downcase

  if action == 'list'
    puts 'list!'
  elsif action == 'add'
    puts 'add!'
  elsif action == 'delete'
    puts 'delete!'
  else
    puts 'Please enter an allowed action' unless action == 'quit'
  end
  # loop finit ici
end
# dire aurevoir
puts 'Goodbye :)'

