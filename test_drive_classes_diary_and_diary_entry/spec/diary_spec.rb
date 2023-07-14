require 'diary'

describe Diary do
  context "initially" do
    it "has an empty list of entries" do
      diary = Diary.new
      expect(diary.all).to eq []
    end

    it "count_words returns zero" do
      diary = Diary.new
      expect(diary.count_words).to eq 0
    end
  end

  describe "#reading_time" do
    context "Returns an integer representing an estimate of the reading time in minutes" do
      it "raises error for wpm 0" do
        diary = Diary.new
        expect { diary.reading_time(0) }.to raise_error "reading speed needs to be positive"
      end

      it "raises error for wpm -1" do
        diary = Diary.new
        expect { diary.reading_time(-1) }.to raise_error "reading speed needs to be positive"
      end
    end
  end
end