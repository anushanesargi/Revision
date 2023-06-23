def todo_checks(text)
  # return text if text.include? "#TODO"

  return (text.include? "#TODO") ? text : "Nothing to do"
end