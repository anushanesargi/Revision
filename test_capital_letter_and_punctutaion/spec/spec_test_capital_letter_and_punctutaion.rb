require 'test_capital_letter_and_punctutaion'

describe "verifies that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark." do

  it "returns true" do
    expect(test_capital_letter_and_punctutaion("I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.")).to eq true
  end
end