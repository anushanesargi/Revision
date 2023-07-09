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
    end
  end
end