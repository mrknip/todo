class Task

def initialize(args)
     @title = args[:title] || "Blank task"
      @done = args[:done] || false
  @deadline = args[:deadline] || ""
end

attr_accessor :title, :done, :deadline

end