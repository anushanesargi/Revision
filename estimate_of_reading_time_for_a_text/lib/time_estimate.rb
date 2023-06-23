def time_estimate(string)
  count = string.split.size
  puts count
  seconds = count * 60/200.to_f
  minutes = (seconds % 3600)/60
  return "#{minutes.round} minute(s) and #{seconds} second(s)" 
end