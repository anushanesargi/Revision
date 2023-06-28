require 'todo_tracker'

RSpec.describe TodoTracker do
  context "no tasks added" do
    it "#todo_list returns empty list" do
      todo_tracker = TodoTracker.new
      expect(todo_tracker.todo_list).to eq []
    end
  end

  context "when one task Buy Chocolates added" do
    it "#todo_list returns ['Buy Chocolates']" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_task("Buy Chocolates")
      todo_tracker.add_task("Meditate")
      expect(todo_tracker.todo_list).to eq ["Buy Chocolates", "Meditate"]
    end
  end
end