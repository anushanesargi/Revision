class TodoTracker
  def initialize
    @list = []
  end
  
  def add_task(*args)
    
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
  end

end  