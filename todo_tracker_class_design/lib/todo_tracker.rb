class TodoTracker
  def initialize
    @list = []
  end
  
  def add_task(*args)
    # puts "#{args}"
    
    if args == [""] || args == [" "]
      fail "Not a valid task"
    end
    args.each { |task|
      next if @list.include? task
      @list << task
    }

  end
  
  def mark_task(*args)
    fail "List is empty." if @list.empty?
    fail "Task not found" if !(args & @list == args)
    @list = @list - args
    return @list
  end
  
  def todo_list
    @list
    # returns the complete list of tasks when user adds any todo tasks
    # returns a list of todo tasks without marked tasks after having marked tasks disapperead
  end

end  