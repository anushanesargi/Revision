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

    describe "finding best entry for given reading speed and time" do
      context "Returns n instance of diary entry representing the entry that is closest 
        to, but not over, the length that the user could read in the minutes they
        have available given their reading speed." do
  
        it "Returns diary_entry_title for reading speed 1 and minutes 5" do
          diary = Diary.new
          diary_entry_title = DiaryEntry.new("my_title", "Today is a good day")
          diary.add(diary_entry_title)
          expect(diary.find_best_entry_for_reading_time(1, 5)).to eq diary_entry_title
        end

        it "Returns nil for minutes exceeding reading_time" do
          diary = Diary.new
          diary_entry_title = DiaryEntry.new("my_title", "Today is a good day")
          diary.add(diary_entry_title)
          expect(diary.find_best_entry_for_reading_time(1, 6)).to eq diary_entry_title
        end

        it "Returns nil for minutes lesser than reading_time" do
          diary = Diary.new
          diary_entry_title = DiaryEntry.new("my_title", "Today is a good day")
          diary.add(diary_entry_title)
          expect(diary.find_best_entry_for_reading_time(1, 4)).to eq nil
        end


        it "Returns diary_entry_title for reading speed 1 and minutes 5" do
          diary = Diary.new
          diary_entry_title = DiaryEntry.new("my_title", "it's partially cloudy")
          diary_entry_next_title = DiaryEntry.new("my_title_next", "Today is a good day")
          diary.add(diary_entry_title)
          diary.add(diary_entry_next_title)
          expect(diary.find_best_entry_for_reading_time(1, 5)).to eq diary_entry_next_title
        end
      end
    end
  end
end