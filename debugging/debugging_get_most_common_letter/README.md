## Debug the following

```
def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| v }[0][0]
end

```

> Intended output:
> 
> > get_most_common_letter("the roof, the roof, the roof is on fire!")
> => "o"
> >get_most_common_letter("the swift, fox, jumped over, lazy dog")
> => "o"