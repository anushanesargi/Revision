require 'diary'
require 'diary_entry'


describe "integration" do
  context "after adding some entries" do
    it "lists out the entries added" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("my_title", "contents")
      diary.add(diary_entry)
      expect(diary.all).to eq [diary_entry]
    end

    describe "#count_words" do
      it "return the number of words in contents of diary entries" do
        diary = Diary.new
        diary_entry_title = DiaryEntry.new("my_title", "contents")
        diary_entry_next_title = DiaryEntry.new("my_title_next", "double contents")
        diary.add(diary_entry_title)
        diary.add(diary_entry_next_title)
        expect(diary.count_words).to eq 3
      end
    end
  end
end