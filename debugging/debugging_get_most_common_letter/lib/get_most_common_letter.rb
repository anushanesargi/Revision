def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    # if char = " " 
    #   next
    # else
    #   counter[char] += 1
    # end

    if /[[:alpha:]]/.match(char)
      counter[char] += 1
    end
  end
  # puts "#{counter}"
  # puts "#{counter.to_a}"
  puts "#{counter.to_a.sort_by { |k, v| v }}"

  counter = counter.to_a.sort_by { |k, v| v }[-1][0]
  # puts "#{counter}"
end