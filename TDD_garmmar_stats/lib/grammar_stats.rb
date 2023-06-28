class GrammarStats
  def initialize
    @checked_result = true
    @percentage = 100
    @no_of_calls = 0
    @no_of_true_checks = 0
  end

  def check(text)
    punctuation = [",", ".", "!"]
    @no_of_calls += 1

    puts "number of calls #{@no_of_calls}"

    if text == ""

      return false

    else
      if_letter = /[[:alpha:]]/.match(text[0])
      if_capital = (text[0] == text[0].capitalize())
      if_appropriate_punctuation = punctuation.include? "#{text[-1]}"
      
      @checked = if_letter && if_capital && if_appropriate_punctuation

    end

    if @checked == true
      @no_of_true_checks += 1
      puts "number of true checks #{@no_of_true_checks}"
    end

    
    return @checked
    
  end

  def percentage_good

    @percentage = @percentage * @no_of_true_checks/@no_of_calls

    return @percentage
    
  end
end