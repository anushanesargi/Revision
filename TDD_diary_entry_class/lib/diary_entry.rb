class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title # ...
    @contents = contents
  end

  def title
    @title # Returns the title as a string
  end

  def contents
    @contents # Returns the contents as a string
  end

  def count_words
    @contents.split.size # Returns the number of words in the contents as an integer
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the user can read per minute
   
    #  puts count_words 
    count_words/wpm  # Returns an integer representing an estimate of the reading time in minutes
                    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning
    
    array_of_words_for_first_chunk = @contents.split
    # puts number_of_words_for_first_chunk

    # contents[0..number_of_words_for_first_chunk]
    return array_of_words_for_first_chunk[0, wpm * minutes].join(" ")
  end
end