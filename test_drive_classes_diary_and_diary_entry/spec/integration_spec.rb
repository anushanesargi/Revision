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

    describe "word counting" do
      it "return the number of words in contents of diary entries" do
        diary = Diary.new
        diary_entry_title = DiaryEntry.new("my_title", "contents")
        diary_entry_next_title = DiaryEntry.new("my_title_next", "double contents")
        diary.add(diary_entry_title)
        diary.add(diary_entry_next_title)
        expect(diary.count_words).to eq 3
      end
    end

    describe "reading time" do
      context "Returns an integer representing an estimate of the reading time in minutes" do
        # it "fails for 0 wpm" do
        #   diary = Diary.new
        #   diary_entry_title = DiaryEntry.new("my_title", "contents")
        #   diary_entry_next_title = DiaryEntry.new("my_title_next", "double contents")
        #   diary.add(diary_entry_title)
        #   diary.add(diary_entry_next_title)
        #   expect { diary.reading_time(0) }.to raise_error "reading speed needs to be positive"
        # end

        # it "fails for negative wpm" do
        #   diary = Diary.new
        #   diary_entry_title = DiaryEntry.new("my_title", "contents")
        #   diary_entry_next_title = DiaryEntry.new("my_title_next", "double contents")
        #   diary.add(diary_entry_title)
        #   diary.add(diary_entry_next_title)
        #   expect { diary.reading_time(-1) }.to raise_error "reading speed needs to be positive"
        # end

        it "Returns 2 for wpm 2 and content size 3" do
          diary = Diary.new
          diary_entry_title = DiaryEntry.new("my_title", "Today is a good day")
          diary_entry_next_title = DiaryEntry.new("my_title_next", "is partially cloudy")
          diary.add(diary_entry_title)
          diary.add(diary_entry_next_title)
          expect(diary.reading_time(2)).to eq 4
        end

        it "Returns 2 for wpm 2 and content size 3" do
          diary = Diary.new
          diary_entry_title = DiaryEntry.new("my_title", "contents")
          diary_entry_next_title = DiaryEntry.new("my_title_next", "double contents")
          diary.add(diary_entry_title)
          diary.add(diary_entry_next_title)
          expect(diary.reading_time(2)).to eq 2
        end
      end
    end
  end
end