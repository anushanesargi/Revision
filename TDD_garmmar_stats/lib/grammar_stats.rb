class GrammarStats
  def initialize
    @punctuation = [",", ".", "!"]
  end

  def check(text)
    if text == ""
      return false
    else
      if_letter = /[[:alpha:]]/.match(text[0])
      if_capital = (text[0] == text[0].capitalize())
      if_appropriate_punctuation = @punctuation.include? "#{text[-1]}"
      
      return if_letter && if_capital && if_appropriate_punctuation

    end
    # text is a string
    
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end