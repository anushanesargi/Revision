class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split(" ").size
  end

  def reading_time(wpm)
    fail "wpm needs to be a positive integer" if !(wpm.positive?)
    return (count_words.to_f/wpm).ceil
  end

  def reading_chunk(wpm, minutes)
    fail "wpm needs to be a positive integer" unless wpm != 0
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end