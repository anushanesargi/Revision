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
end