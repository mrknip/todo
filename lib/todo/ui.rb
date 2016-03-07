class Ui

def initialize
end

def interact_with(list)
  puts "Would you like to [A]dd, [D]elete, [U]pdate, or [S]how the list?"
  answer = input
  command(answer, list)
end

def command(answer, list)
  case answer.downcase
  when "a"
    puts "What would you like to add?"
    new_item = input
    list.add_item(new_item)
  when "d"
    puts "Which item do you want to delete?"
    deleted_item = input
    list.delete_item(deleted_item)
  when "u"
    update_task(list)
  when "s"
    list.display_list
  when "exit"
    exit
  end
end

def update_task(list)
  puts "Which task do you want to edit? (1 to #{list.length})"
  task_no = input.to_i # NEEDS VALIDATOR
  puts "Would you like to\n\ta) change status\n\tb) change details\n\tc) change deadline?"
  update_type = input
  
  case update_type.downcase
  when "a"
    puts "changing status"
    list.change_status(task_no)
  when "b"
    puts "Please enter new details"
    new_deets = input
    list.update_item(task_no, new_deets)
  when "c"
    puts "changing deadline"
  end
end

def input
  $stdin.gets.chomp
end




end
