## Follow the design recipe to implement the following user stories in your project. Both of these will be within a single class.



    As a user
    So that I can keep track of my tasks
    I want a program that I can add todo tasks to and see a list of them.

    As a user
    So that I can focus on tasks to complete
    I want to mark tasks as complete and have them disappear from the list.


## Design recipe

## Single-Class Programs Design Recipe
### 1. Describe the Problem

Typically you will be given a short statement that does this called a user story. In industry, you may also need to ask further questions to clarify aspects of the problem.

### 2. Design the Class Interface

The interface of a class includes:

    The name of the class.
    The design of its initializer and the parameters it takes.
    The design of its public methods, including:
        Their names and purposes
        What parameters they take and the data types.
        What they return and that data type
        Any side effects they might have.

Steps 3 and 4 then operate as a cycle.

### 3. Create Examples as Tests

These are examples of the class being used with different initializer arguments, method calls, and how it should behave.

For complex challenges you might want to come up with a list of examples first and then test-drive them one by one. For simpler ones you might just dive straight into writing a test for the first example you want to address.

### 4. Implement the Behaviour

For each example you create as a test, implement the behaviour that allows the class to behave according to your example.

At this point you may wish to apply small-step test-driving to manage the complexity. This means you only write the minimum lines of the example to get the test to fail (red), then make it pass (green) and refactor, before adding another line to the test until it fails, then continue.

Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.

## Design

```
class TodoTracker
  def initialize
    # ...
  end

  def add_task(text) # text is a string
    # adds task to the todo list
  end

  def mark_task(text) # text is a string
    # removes the marked task from todo_list
  end

  def todo_list
    # returns the complete list of tasks when user adds any todo tasks
    # returns a list of todo tasks without marked tasks after having marked tasks disapperead
  end
end

```

## test examples

```
# 1

todo_tracker = TodoTracker.new
todo_tracker.todo_list # => []

# 2

todo_tracker = TodoTracker.new
todo_tracker.add_task("Buy Chocolates")
todo_tracker.todo_list # => ["Buy Chocolates"]

# 3

todo_tracker = TodoTracker.new
todo_tracker.add_task("Buy Chocolates", "Meditate")
todo_tracker.todo_list # => ["Buy Chocolates", "Meditate"]

# 4

todo_tracker = TodoTracker.new
todo_tracker.add_task("Buy Chocolates", "Buy Chocolates")
todo_tracker.todo_list # => ["Buy Chocolates"]

# 5

todo_tracker = TodoTracker.new
todo_tracker.add_task("Buy Chocolates", "Meditate")
todo_tracker.mark_task("Meditate")
todo_tracker.todo_list # => ["Buy Chocolates"]

# 6

todo_tracker = TodoTracker.new
todo_tracker.add_task("Buy Chocolates", "Meditate")
todo_tracker.mark_task("Meditate")
todo_tracker.mark_task("Meditate") # raise error 
todo_tracker.todo_list # => ["Buy Chocolates"]

# 7

todo_tracker = TodoTracker.new
todo_tracker.mark_task("Meditate") # raise error task not found
todo_tracker.todo_list # => [""]

# 8

todo_tracker = TodoTracker.new
todo_tracker.add_task("Buy Chocolates", "Meditate")
todo_tracker.mark_task("Buy Milk") # raise error task not found
todo_tracker.todo_list # => [""]
```
