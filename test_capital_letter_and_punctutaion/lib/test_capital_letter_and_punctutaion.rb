def test_capital_letter_and_punctutaion(text)
  # return /[[:alpha:]]/.match(text[0]) ? true : false
  return text[0] == text[0].capitalize() && /[[:alpha:]]/.match(text[0]) ? true : false
end