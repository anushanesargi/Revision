def test_capital_letter_and_punctutaion(text)
  # return /[[:alpha:]]/.match(text[0]) ? true : false
  return /[[:alpha:]]/.match(text[0]) && text[0] == text[0].capitalize() ? true : false
end