def test_capital_letter_and_punctutaion(text)
  punctuation = [".", "?", "!"]

  puts text[-1]
  # return /[[:alpha:]]/.match(text[0]) ? true : false
  # if punctuation.include? "#{text[-1]}"
  #   return true
  # end
  return /[[:alpha:]]/.match(text[0]) && text[0] == text[0].capitalize() && (punctuation.include? "#{text[-1]}")

end