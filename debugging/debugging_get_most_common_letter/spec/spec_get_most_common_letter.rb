require 'get_most_common_letter'

describe "Gets the most common letter in a given text" do

  it "returns 'o' for the given text" do
    expect(get_most_common_letter("the roof, the roof, the roof is on fire!")).to eq "o"
  end

  it "returns 'o' for the given text" do
    expect(get_most_common_letter("the swift, fox, jumped over, lazy dog")).to eq "o"
  end
end