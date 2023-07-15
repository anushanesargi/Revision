class Diary
  def initialize
    @entries = []
    @closest_reading_time = 0 
  end

  def add(entry)
    @entries << entry
    @closest_reading_time = 0
  end

  def all
    return @entries
  end

  def count_words
    return @entries.map(&:count_words).sum
  end

  def reading_time(wpm)
    fail_if(wpm)
    return ((count_words.to_f)/wpm).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    fail_if(wpm)
    best_entries = @entries.filter do |entry|
      entry.reading_time(wpm) <= minutes
    end

    puts "#{best_entries}"
    
    best_entry = []

    best_entries.each do |entry|
      if entry.reading_time(wpm) > @closest_reading_time
        @closest_reading_time = entry.reading_time(wpm)
        best_entry = [entry]
      end
    end

    puts "final entry #{best_entry}"

    return best_entry.first
  end

  private

  def fail_if(wpm)
    fail "reading speed needs to be positive" if !(wpm.positive?)
  end

end