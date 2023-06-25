require 'diary_entry'

RSpec.describe "DiaryEntry" do
  it "constructs" do
    diary_entry = DiaryEntry.new("diary_title", "diary_contents")
    expect(diary_entry.title).to eq "diary_title"
    expect(diary_entry.contents).to eq "diary_contents"
  end

  it "returns the number of words in the contents as an integer" do
    diary_entry = DiaryEntry.new("diary_title", "diary contents")
    expect(diary_entry.count_words).to eq 2
  end

end