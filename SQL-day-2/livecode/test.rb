require 'sqlite3'
DB = SQLite3::Database.new('tasks.sqlite')
DB.results_as_hash = true
require_relative 'task'

# READ

# CREATE

# UPDATE

# DELETE
