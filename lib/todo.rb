require_relative "./todo/ui"
require_relative "./todo/list"
require_relative "./todo/task"

class Todo

def initialize
  @file = ARGV[0] || ""
  @ui = Ui.new
  @todo_list = List.new(file)
end

attr_reader :file, :ui, :todo_list

def run
  puts file
  loop do
    ui.interact_with(todo_list)
  end
end

end

Todo.new.run
