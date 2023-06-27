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

  it "raise an error for 0 wpm" do
    diary_entry = DiaryEntry.new("diary_title", "hello")
    expect { diary_entry.reading_time(0) }.to raise_error "wpm needs to be a positive integer"
  end

end

RSpec.describe "#reading_chunk" do

  it "Returns a string with a chunk of the contents that the user could read in the given number of minutes." do
  diary_entry = DiaryEntry.new("diary_title", ("one " * 100))
  expect(diary_entry.reading_chunk(2, 5)).to eq "one one one one one one one one one one"
  end

  it "Returns the next chunk if called again skipping what has already been read." do
    diary_entry = DiaryEntry.new("diary_title", ("one " * 5 + "two " * 4 + "three " * 5))
    first_call = diary_entry.reading_chunk(1, 3)
    puts "this is first call #{first_call}"
    second_call = diary_entry.reading_chunk(1, 5)
    puts "this is second_call #{second_call}"
    expect(second_call).to eq "one one two two two"
  end

  it "Returns the next chunk until the content is fully read." do
    diary_entry = DiaryEntry.new("diary_title", ("one " * 5 + "two " * 4 + "three " * 5))
    diary_entry.reading_chunk(1, 3)
    diary_entry.reading_chunk(1, 5)
    expect(diary_entry.reading_chunk(2, 4)).to eq "two three three three three three"
  end

  it "returns from the start on the next call after the content is fully read." do
    diary_entry = DiaryEntry.new("diary_title", ("one " * 5 + "two " * 4 + "three " * 5))
    diary_entry.reading_chunk(1, 3)
    diary_entry.reading_chunk(1, 5)
    diary_entry.reading_chunk(2, 4)
    expect(diary_entry.reading_chunk(1, 2)).to eq "one one"
  end

end