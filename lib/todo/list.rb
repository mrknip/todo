# tasks to have properties: status and deadline

require_relative "Task"

class List

  def initialize(file = "")
    @list = []
    @file = file
    load_list(file) unless !File.file?("./data/#{file}.txt") || file == ""
  end
  
attr_accessor :list
attr_reader :file

# Public functions

  def add_item(item)
    list << Task.new(:title => item) unless list_includes_task?(item)
    save_list(file)
  end

  def delete_item(item)
    list.delete_if { |task| task.title == item } unless !list_includes_task?(item)
    save_list(file)
  end

  def read_item
    # Not needed until items carry additional data
  end

  def update_item(task_no, new_deets)
    task_no = task_no.to_i # STILL NEEDS VALIDATION WRITING
    list[task_no - 1].title = new_deets
    save_list(file)
  end
 
  def change_status(task_no)
    task_no = task_no.to_i # NEEDS VALIDATION
    list[task_no - 1].done = !list[task_no - 1].done
    save_list(file)
  end
  
# Utility functions

  def length # nb public
    self.list.length
  end

  def display_list
    puts "\n===================="
    puts "TO DO:"
    puts "===================="
    list.each do |task| 
      print task.title, (task.done ? " - DONE" : ""), "\n"  
    end
    puts "\n"
  end

  def load_list(file)
    list_file = File.open("./data/#{file}.txt", mode: 'r+:bom|utf-8')
    list_file.each_line do |line| 
      data = line.chomp.split("<<>>")
      next if data.empty?
      task = Task.new(:title => data[0],
                       :done => data[1] == "true" ? true : false,
                   :deadline => data[2])
      list << task
    end
  end

  def save_list(file)
    list_file = File.open("./data/#{file}.txt", mode: 'w+:bom|utf-8')
    self.list.each do |task|
      task_data = "#{task.title}<<>>#{task.done}<<>>#{task.deadline}"
      list_file.puts task_data
    end
  end

  def list_includes_task?(title)
    list.any? { |task| task.title == title }  
  end
  
end
