require 'todo_tracker'

RSpec.describe TodoTracker do
  context "1. no tasks added" do
    it "#todo_list returns empty list" do
      todo_tracker = TodoTracker.new
      expect(todo_tracker.todo_list).to eq []
    end
  end

  context "2. when one task is added" do
    it "#todo_list returns ['Buy Chocolates']" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_task("Buy Chocolates")
      expect(todo_tracker.todo_list).to eq ["Buy Chocolates"]
    end
  end

  context "4. when n number of tasks are added" do
    it "#todo_list returns ['Buy Chocolates', 'Meditate']" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_task("Buy Chocolates", "Meditate")
      expect(todo_tracker.todo_list).to eq ["Buy Chocolates", "Meditate"]
    end
  end

  context "5. when duplicate tasks are added" do
    it "#todo_list returns ['Buy Chocolates']" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_task("Buy Chocolates", "Buy Chocolates")
      expect(todo_tracker.todo_list).to eq ["Buy Chocolates"]
    end
  end

  context "7. when adding an empty task" do
    it "raises error " do
      todo_tracker = TodoTracker.new
      expect{ todo_tracker.add_task("")}.to raise_error "Cannot add an empty task"
    end
  end

  # context "8. when adding an empty task" do
  #   it "raises error " do
  #     todo_tracker = TodoTracker.new
  #     expect{ todo_tracker.add_task(" ")}.to raise_error "Cannot add an empty/blank task"
  #   end
  # end

end