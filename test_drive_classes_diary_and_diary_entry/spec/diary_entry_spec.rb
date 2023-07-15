require 'diary_entry'

describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end

  describe "#count_words" do
    it "returns the number of words in contents" do
      diary_entry = DiaryEntry.new("my_title", "my_contents")
      expect(diary_entry.count_words).to eq 1
    end

    it "returns 0 if contents is empty" do
      diary_entry = DiaryEntry.new("my_title", "")
      expect(diary_entry.count_words).to eq 0
    end

    it "returns the number of words in contents" do
      diary_entry = DiaryEntry.new("my_title", "my contents")
      expect(diary_entry.count_words).to eq 2
    end
  end

  describe "#reading_time" do
    context "Returns an integer representing an estimate of the reading time in minutes" do
      it "raises error for wpm 0" do
        diary_entry = DiaryEntry.new("my_title", "my_contents")
        expect { diary_entry.reading_time(0) }.to raise_error "wpm needs to be a positive integer"
      end

      it "raises error for wpm -1" do
        diary_entry = DiaryEntry.new("my_title", "my_contents")
        expect { diary_entry.reading_time(-1) }.to raise_error "wpm needs to be a positive integer"
      end

      it "returns 1 for content with one word given wpm 2" do
        diary_entry = DiaryEntry.new("my_title", "my_contents")
        expect(diary_entry.reading_time(2)).to eq 1
      end

      it "returns 0 if contents is empty" do
        diary_entry = DiaryEntry.new("my_title", "")
        expect(diary_entry.reading_time(2)).to eq 0
      end

      it "returns 2 for content with two word given wpm 1" do
        diary_entry = DiaryEntry.new("my_title", "my contents")
        expect(diary_entry.reading_time(1)).to eq 2
      end
    end
  end

  describe "#reading_chunk" do
    context "Returns a string with a chunk of the contents that the user could read in the given number of minutes." do
      it "raises an error for 0 reading speed" do
        diary_entry = DiaryEntry.new("my_title", "my_contents")
        expect { diary_entry.reading_chunk(0, 3) }.to raise_error "wpm needs to be a positive integer"
      end

      it "raises an error for negative reading speed" do
        diary_entry = DiaryEntry.new("my_title", "my_contents")
        expect { diary_entry.reading_chunk(-1, 3) }.to raise_error "wpm needs to be a positive integer"
      end

      it "Returns one one one one for reading speed 2 and minutes 2" do
        diary_entry = DiaryEntry.new("diary_title", ("one " * 5))
        expect(diary_entry.reading_chunk(2, 2)).to eq "one one one one"
      end

      it "Returns the next chunk three" do
        diary_entry = DiaryEntry.new("diary_title", ("one two three four"))
        first_chunk = diary_entry.reading_chunk(1, 2)
        second_chunk = diary_entry.reading_chunk(1, 1)
        expect(second_chunk).to eq "three"
      end

      it "Returns form the start after everything has been read" do
        diary_entry = DiaryEntry.new("diary_title", ("one two three four"))
        first_chunk = diary_entry.reading_chunk(1, 4)
        second_chunk = diary_entry.reading_chunk(1, 1)
        expect(second_chunk).to eq "one"
      end
    end
  end
end