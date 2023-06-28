class GrammarStats
  def initialize
    @punctuation = [",", ".", "!"]
    @percentage = 100
    @no_of_checks = 0
  end

  def check(text)
    @no_of_checks += 1

    if text == ""
      return false
    else
      if_letter = /[[:alpha:]]/.match(text[0])
      if_capital = (text[0] == text[0].capitalize())
      if_appropriate_punctuation = @punctuation.include? "#{text[-1]}"
      
      checked = if_letter && if_capital && if_appropriate_punctuation

      # if checked == true
      #   @percentage = 

      # end
      return if_letter && if_capital && if_appropriate_punctuation

    end
   
    
  end

  def percentage_good

    return @percentage
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end