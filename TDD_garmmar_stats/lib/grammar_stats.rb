class GrammarStats
  def initialize
    @punctuation = [",", ".", "!"]
  end

  def check(text)
    # text is a string
    return /[[:alpha:]]/.match(text[0]) && text[0] == text[0].capitalize() && (@punctuation.include? "#{text[-1]}")
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end