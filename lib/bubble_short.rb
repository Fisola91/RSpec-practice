def bubble_short(array)
  length = array.length
  sorted = true
  until sorted == false
    sorted = false
    (length-1).times do |num|
      if array[num] > array[num + 1]
        array[num], array[num + 1] = array[num+1], array[num]
        p array
        sorted = true
      end
    end
  end
  array
  ## BUBBLE_SORT PSEUDOCODE
  # iterate over the array by lenght -1 times
  # from the start of the array, swap if the left hand number is grater than the right hasn number till it gets to the last num
  # Repeat the process till the array is sorted
end
