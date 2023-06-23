def time_estimate(string)
  count = string.split.size
  # puts count
  total_seconds = count * 60/200.to_f
  # puts total_seconds
  minutes = (total_seconds % 3600)/60
  # puts minutes
  seconds = total_seconds - (minutes.round * 60)
  return "#{minutes.round} minute(s) and #{seconds.round(1)} second(s)" 
end