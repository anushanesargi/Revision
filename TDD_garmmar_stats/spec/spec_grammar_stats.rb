require 'grammar_stats'

RSpec.describe "#check" do
  it "returns a string" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("Hello!")).to eq "Hello!"
  end
end