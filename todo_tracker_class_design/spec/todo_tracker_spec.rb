require 'todo_tracker'

RSpec.describe TodoTracker do
  context "no tasks added" do
    it "#todo_list returns empty list" do
      todo_tracker = TodoTracker.new
      expect(todo_tracker.todo_list).to eq []
    end
  end

  context "when one task is added" do
    it "#todo_list returns ['Buy Chocolates']" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_task("Buy Chocolates")
      expect(todo_tracker.todo_list).to eq ["Buy Chocolates"]
    end
  end

  # context "when two tasks are added in two different calls" do
  #   it "#todo_list returns ['Buy Chocolates', 'Meditate']" do
  #     todo_tracker = TodoTracker.new
  #     todo_tracker.add_task["Buy Chocolates"]
  #     todo_tracker.add_task["Meditate"]
  #     expect(todo_tracker.todo_list).to eq ["Buy Chocolates", "Meditate"]
  #   end
  # end

  # context "when list of tasks are added" do
  #   it "#todo_list returns ['Buy Chocolates', 'Meditate']" do
  #     todo_tracker = TodoTracker.new
  #     todo_tracker.add_task["Buy Chocolates", "Meditate"]
  #     expect(todo_tracker.todo_list).to eq ["Buy Chocolates", "Meditate"]
  #   end
  # end

end