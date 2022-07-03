def substrings(word, array)
  word.downcase!
  word_array = word.split
  match_array = []
  count_array = []
  # 1. Iterate over the array
  array.each do |arr|
    if word_array.any? { |letter| letter.include?(arr) }
      match_array.push(arr)
    end
    count = word_array.count { |letter| letter.include?(arr)}
    count_array.push(count)
    p count_array
    count_array.delete(0)
    p count_array
  end
  result = match_array.zip(count_array).to_h

end

# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
