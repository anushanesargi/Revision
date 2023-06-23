require 'todo_checks'

describe "check if a text includes the string #TODO" do
  
  it "return text if #TODO included" do
    expect(todo_checks("#TODO Get Milk")).to eq "#TODO Get Milk"
  end

end