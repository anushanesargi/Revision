require 'grammar_stats'

RSpec.describe "#check" do
  # it "returns a string" do
  #   grammar_stats = GrammarStats.new
  #   expect(grammar_stats.check("Hello!")).to eq "Hello!"
  # end

  it "returns true or false depending on whether the text begins with a capital letter and ends with a sentence-ending punctuation mark." do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("Hello!")).to eq true
  end
end