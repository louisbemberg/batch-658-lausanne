# require 'sqlite3'
# DB = SQLite3::Database.new("db/doctors.db")
# DB.results_as_hash = true

class Doctor
  attr_reader :id
  attr_writer :name

  def initialize(attributes = {})
    @id = attributes[:id]
    @age = attributes[:age]
    @name = attributes[:name]
    # TODO: store other attributes as instanced variable (exercise)
  end

  def save
    # if l'objet existe en base de donnée
      # DB.execute(UPDATE)
    # else
      # DB.execute(INSERT INTO)
    # end
  end

  def self.all
  end

end

Doctor.all

doctor1 = Doctor.new(age: 18, name: "Marc")
p doctor1

doctor1.save

doctor1.name = "Markus"

doctor1.save
