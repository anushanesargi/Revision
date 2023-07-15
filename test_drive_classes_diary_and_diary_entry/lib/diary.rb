class Diary
  def initialize
    @entries = []
  end

  def add(entry)
    @entries << entry
  end

  def all
    return @entries
  end

  def count_words
    return @entries.map(&:count_words).sum
  end

  def reading_time(wpm)
    fail "reading speed needs to be positive" if !(wpm.positive?)
    return ((count_words.to_f)/wpm).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    fail "reading speed needs to be positive" if !(wpm.positive?)

    best_entries = @entries.filter do |entry|
      puts entry.reading_time(wpm)
       entry.reading_time(wpm) <= minutes
    end

    return best_entries.first
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end