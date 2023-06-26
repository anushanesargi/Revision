class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title # ...
    @contents = contents
    @count = 0
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
    #  puts count_words 
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    count_words/wpm
  end

  def reading_chunk(wpm, minutes)
    # `wpm` is an integer representing the number
    # of words the user can read per minute
    # `minutes` is an integer representing the
    # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning
    puts "i am here1"
    

    if @count == 0
      puts "i am here2"
      # array_of_words_for_first_chunk = content_split
      puts "i am here3"
      chunk_of_words = content_split[0, wpm * minutes].join(" ")
    else
      puts "i am here4"
      return @count
    end

    @count += 1
    new_content = @contents[wpm * minutes + 1.. ]
    puts "new content is #{new_content}"
    return chunk_of_words
  end

  private
    def content_split
      @contents.split
    end
end