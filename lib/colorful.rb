def colorful?(number)
  # number should not be above 3 digit. Convert to string first
  return false if number.to_s.length > 3
  # return true if the number is an integer
  return true if [0,1].include? number
  # split the number into an array using "chars method" and map over it
  digits_arr = number.to_s.chars.map { |digit| digit.to_i}

  # Multiply the consecutive subset of number
  digits_arr << digits_arr[0] * digits_arr[1]
  digits_arr << digits_arr[1] * digits_arr[2]
  digits_arr << digits_arr[0] * digits_arr[2] * digits_arr[3]

  digits_arr.uniq == digits_arr ? true : false

  # if product output is uniq return true, hecne false

end
