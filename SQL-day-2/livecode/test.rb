require 'sqlite3'
DB = SQLite3::Database.new('tasks.sqlite')
DB.results_as_hash = true
require_relative 'task'

# READ
# p Task.find(6)
# p Task.find(7)

# p Task.all
# CREATE
# task1 = Task.new(title: "wagon", description: "test", done: true)
# task1.save

# UPDATE

# DELETE

task2 = Task.find(10)
task2.delete
p Task.all
