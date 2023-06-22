require 'make_snippet'

describe "takes a string as an argument and returns the first five words and then a '...' if there are more than that." do
  it "return RED" do
    expect(make_snippet("RED")).to eq "RED"
  end

  it "returns GREEN" do
    expect(make_snippet("GREEN")).to eq "GREEN"
  end
end