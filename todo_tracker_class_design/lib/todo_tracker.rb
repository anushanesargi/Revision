class TodoTracker
  def initialize
    @list = []
  end
  
  def add_task(*args) # text is a string
    puts "#{args}"
    
    if args == [""]
      fail "Not a valid task"
    end
    args.each { |task|
      next if @list.include? task
      @list << task
    }
    
    # adds task to the todo list
  end
  
  def mark_task(*args) # text is a string
    # removes the marked task from todo_list
  end
  
  def todo_list
    @list
    # returns the complete list of tasks when user adds any todo tasks
    # returns a list of todo tasks without marked tasks after having marked tasks disapperead
  end

end  