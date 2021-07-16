class Task
  attr_reader :title, :id
  attr_accessor :done

  def initialize(attributes)
    @id = attributes[:id]
    @title = attributes[:title]
    @description = attributes[:description]
    @done = attributes[:done] || false
  end

  # READ -  build a (class? instance?) method to ***find*** one specific Task, given its id

  # READ - build a (class? instance?) method to get ***all*** the tasks from the DB

  # CREATE / UPDATE build a (class? instance?) method that ***saves*** objects in the DB

  # DELETE - build a (class? instance?) method that
end
