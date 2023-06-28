require 'todo_tracker'

RSpec.describe "#todo_list" do
  context "no tasks added" do
    it "returns empty list" do
      todo_tracker = TodoTracker.new
      expect(todo_tracker.todo_list).to eq []
    end

  end
end