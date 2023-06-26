require 'diary_entry'

RSpec.describe "DiaryEntry" do
  it "constructs" do
    diary_entry = DiaryEntry.new("diary_title", "diary_contents")
    expect(diary_entry.title).to eq "diary_title"
    expect(diary_entry.contents).to eq "diary_contents"
  end

end

RSpec.describe "#count_words" do

  it "returns the number of words in the contents as an integer" do
    diary_entry = DiaryEntry.new("diary_title", "diary contents")
    expect(diary_entry.count_words).to eq 2
  end

end

RSpec.describe "#reading_time" do

  it "Returns an integer representing an estimate of the reading time in minutes for the contents at the given wpm." do
    diary_entry = DiaryEntry.new("diary_title", "Returns an integer representing an estimate of the reading time")
    # number_of_words = diary_entry.count_words
    expect(diary_entry.reading_time(2)).to eq 5
  end

end