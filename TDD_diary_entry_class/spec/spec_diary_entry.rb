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

  it "returns 0 for an empty contemt string" do
    diary_entry = DiaryEntry.new("diary_title", "")
    expect(diary_entry.count_words).to eq 0
  end

end

RSpec.describe "#reading_time" do

  it "Returns an integer representing an estimate of the reading time in minutes for the contents at the given wpm." do
    diary_entry = DiaryEntry.new("diary_title", "Returns an integer representing an estimate of the reading time " * 100)
    expect(diary_entry.reading_time(200)).to eq 5
  end

  it "Returns 0 for an empty contents string." do
    diary_entry = DiaryEntry.new("diary_title", "")
    expect(diary_entry.reading_time(200)).to eq 0
  end

end

RSpec.describe "#reading_chunk" do

  it "Returns a string with a chunk of the contents that the user could read in the given number of minutes." do
  diary_entry = DiaryEntry.new("diary_title", ("one " * 100))
  expect(diary_entry.reading_chunk(2, 5)).to eq "one one one one one one one one one one "
  end

end