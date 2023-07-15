class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @words_read_until = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return splitting_contents.size
  end

  def reading_time(wpm)
    fail "wpm needs to be a positive integer" if !(wpm.positive?)
    return (count_words.to_f/wpm).ceil
  end

  def reading_chunk(wpm, minutes)
    fail "wpm needs to be a positive integer" unless wpm.positive?

    # total_words = wpm * minutes
    # return splitting_contents[0...total_words].join(" ")
    words_end_at = @words_read_until + (wpm * minutes)
    
    chunk_of_words = splitting_contents[@words_read_until...words_end_at] # Returns a string with a chunk of the contents that the user could read in the given number of minutes.
   
    @words_read_until = words_end_at

    return chunk_of_words.join(" ")
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end

  private
  def splitting_contents
    @contents.split(" ")
  end
end