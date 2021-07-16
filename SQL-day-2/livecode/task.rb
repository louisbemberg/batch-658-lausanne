class Task
  attr_reader :title, :id
  attr_accessor :done

  def initialize(attributes = {})
    @id = attributes[:id]
    @title = attributes[:title]
    @description = attributes[:description]
    @done = attributes[:done] || false
  end

  # READ -  build a (class? instance?) method to ***find*** one specific Task, given its id
  def self.find(id)
    results = DB.execute("SELECT * FROM tasks WHERE id = ?", id)
    return if results.empty?

    task = Task.new(results.first.transform_keys(&:to_sym))
    task.done = task.done == 1
    task
  end

  # READ - build a (class? instance?) method to get ***all*** the tasks from the DB
  def self.all
    DB.execute("SELECT * FROM tasks").map do |hash|
      task = Task.new(hash.transform_keys { |key| key.to_sym }) # unless hash.nil?
      task.done = task.done == 1
      task
    end
  end

  # CREATE / UPDATE build a (class? instance?) method that ***saves*** objects in the DB
  def save
    if @id.nil?
      DB.execute("INSERT INTO tasks (title, description, done) VALUES (?, ?, ?)", @title, @description, @done ? 1 : 0)
      @id = DB.last_insert_row_id
    else
      DB.execute("UPDATE tasks SET title = ?, description = ?, done = ?", @title, @description, @done ? 1 : 0)
    end
  end

  # DELETE - build a (class? instance?) method that
  def delete
    DB.execute("DELETE FROM tasks WHERE id = ?", @id)
  end
end
