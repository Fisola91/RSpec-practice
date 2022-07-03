def substrings(word, array)
  # p w = word
  p a = array.join(", ")
  #a = array.split
  # 1. Iterate over the array
  array.map do |arr|
    arr
    if arr.include?(word)
      p arr
    end
      # word

      # if word.any?(array)
       # "if word contain substring that is present in dictionary"
  end
  # 2. if word is found in array, return and the word and the number of occurence
end

# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
