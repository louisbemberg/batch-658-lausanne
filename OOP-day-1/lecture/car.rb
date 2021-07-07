class Car
  # attr_reader :color, :year, :wheels, :airbag # def @color end
  # attr_writer :color, :year, :wheels, :airbag
  attr_accessor :color, :year, :wheels, :airbag, :phares

  def initialize(color, year) # constructor / constructeur
    @color = color # variable d'instance
    @year = year
    @wheels = 4
    @airbag = true
    @phares = "jaune"
  end

  def create_nickname(nom)
    @nickname = nom
  end

  def color # cette méthode fait la même chose que attr_reader :color
    @color
  end

  def claxonner
    puts "Beep beep!"
  end

  def demarrer # cette méthode publique appelle 3 méthodes privées
    injecter
    etincelle
    pistons
  end

  # la méthode ci-dessous marche, mais par convention on préfère celle ligne 37
  # def change_paint(new_color)
  #   @color = new_color
  # end

  def color=(new_color) # cette méthode fait la même chose que attr_writer :color
    @color = new_color
  end

  private

  def injecter
    puts "injecte de l'essence dans la pompe"
  end

  def etincelle
    puts 'crée une étincelle'
  end

  def pistons
    puts 'tourne les pistons'
  end

end

# instance.variable # reader
# instance.variable = nouvellevaleur # writer

car1 = Car.new("Yellow", 2021)
car2 = Car.new("Mauve", 1980)

# on lit la couleur de car1 grâce à la méthode def color (ou grâce à l' attr_reader)
p car1.color

# on change la couleur de car1 grâce à la méthode def color= (ou grâce à l' attr_writer)
car1.color = "Red"
# on ajoute un nickname supplémentaire à car2
car2.create_nickname("Bichette")
p car2

# on démarre  la voiture (méthode publique)
car1.demarrer

# on crée deux voitures identiques:
p car3 = Car.new("Green", 1995)
p car4 = Car.new("Green", 1995)

# est-ce que ces voitures sont les mêmes objets??
p car3 == car4 # false
# est.ce qu'elles ont la même classe?
p car3.class == car4.class # true
# vous verrez qu'elles n'ont pas le même emplacement en mémoire:
p car3
p car4

# p car2 = Car.new
# p car3 = Car.new
# p car4 = Car.new

# puts car1.color
# puts car1.year
# puts car1.wheels
# puts car1.airbag


