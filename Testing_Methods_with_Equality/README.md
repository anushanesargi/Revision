# Revision
## Write tests for the following methods:

### 1:
** File: lib/report_length.rb

def report_length(str)
  length = str.length
  return "This string was #{length} characters long."
end

### 2:
** File: lib/greet.rb

def greet(name)
  return "Hello, #{name}!"
end

### 3:
** File: lib/check_codeword.rb

def check_codeword(codeword)
  if codeword == "horse"
    return "Correct! Come in."
  elsif codeword.chars.first == "h" && codeword.chars.last == "e"
    return "Close, but nope."
  else
    return "WRONG!"
  end
end
