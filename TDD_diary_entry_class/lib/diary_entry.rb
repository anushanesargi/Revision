class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title # ...
    @contents = contents
    @words_read_until = 0
  end

  def title
    @title # Returns the title as a string
  end

  def contents
    @contents # Returns the contents as a string
  end

  def count_words
    content_split.size # Returns the number of words in the contents as an integer
  end

  
  
  def reading_time(wpm) # wpm is an integer representing the number of words the user can read per minute
    fail "wpm needs to be a positive integer" unless wpm.positive?
    count_words/wpm # Returns an integer representing an estimate of the reading time in minutes for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes)
    fail "wpm needs to be a positive integer" unless wpm.positive?
    words_end_at = @words_read_until + (wpm * minutes)
    
    chunk_of_words = content_split[@words_read_until...words_end_at] # Returns a string with a chunk of the contents that the user could read in the given number of minutes.
   
    if words_end_at >= count_words
      @words_read_until = 0
    else
      @words_read_until = words_end_at
    end

    return chunk_of_words.join(" ")
  end

  private
    def content_split
      @contents.split
    end
end