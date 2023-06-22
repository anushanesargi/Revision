def make_snippet(word)
  # return word if word.length <= 5
  # return word[0...5] + "..." if word.length > 5

  return word.length <= 5 ? word : (word[0...5] + "...")
end