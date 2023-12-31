require 'count_words'

describe "takes a string as an argument and returns the number of words in that string" do
  it "returns 4 when passed 'Hello! How are you?'" do
    expect(count_words("Hello! How are you?")).to eq 4
  end

  it "returns 1 when passed 'Hello!'" do
    expect(count_words("Hello!")).to eq 1
  end
end