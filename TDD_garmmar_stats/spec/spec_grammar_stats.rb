require 'grammar_stats'

RSpec.describe "#check" do
  # it "returns a string" do
  #   grammar_stats = GrammarStats.new
  #   expect(grammar_stats.check("Hello!")).to eq "Hello!"
  # end

  it "returns true for the text beginning with a capital letter and ends with a sentence-ending punctuation mark." do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("Hello!")).to eq true
  end

  it "returns false for the text beginning with a capital letter and ends with no punctuation mark." do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("Hello")).to eq false
  end

  it "returns false for the text not beginning with a capital letter and ends with a sentence-ending punctuation mark." do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("hello!")).to eq false
  end

  it "returns false for the text not beginning with a capital letter and not ending with a sentence-ending punctuation mark." do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("hello hello")).to eq false
  end

  it "returns false for empty text string" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("")).to eq false
  end
end

RSpec.describe "#percentage_good" do
  it "retruns 100 if #check is called once returns true" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("Hello!")
    expect(grammar_stats.percentage_good).to eq 100
  end

  it "retruns 50 for a true and false check" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("Hello!")
    grammar_stats.check("Hello")
    expect(grammar_stats.percentage_good).to eq 50
  end
end