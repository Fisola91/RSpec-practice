def substrings(word, array)
  # word_array = word.downcase.split
  # match_array = []
  # count_array = []
  # # 1. Iterate over the array
  # array.each do |arr|
  #   if word_array.any? { |letter| letter.include?(arr) }
  #     match_array.push(arr)
  #   end
  #   count = word_array.count { |letter| letter.include?(arr)}
  #   count_array.push(count)
  #   p count_array
  #   count_array.delete(0)
  #   p count_array
  # end
  # result = match_array.zip(count_array).to_h
  hash = {}
  word_array = word.downcase.split
  word_array.each do |letter|
    array.each do |arr|
      # Letter includes each word in the dictionary array
      if letter.include?(arr)
        if hash.has_key?(arr)
          hash[arr] += 1
        else
          hash[arr] = 1
        end
      end
      raise ArgumentError, "check" unless letter.include?(arr)
    end
  end
  p hash
end



# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
