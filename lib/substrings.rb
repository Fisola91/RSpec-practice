def substrings(word, array)
  word_array = word.split
  match_array = []
  count_array = []
  # 1. Iterate over the array
  array.each do |arr|
    if word_array.any? { |letter| letter.include?(arr) }
      p match_array.push(arr)
    end
    count = word_array.count { |letter| letter.include?(arr)}
    count_array.push(count)
    count_array.delete(0)
    result = match_array.zip(count_array).to_h
      # word

      # if word.any?(array)
       # "if word contain substring that is present in dictionary"
  end
end

# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
