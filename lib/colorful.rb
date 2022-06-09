def colorful?(number)
  # number should not be above 3 digit. Convert to string first
  return false if number.to_s.length > 3
  # return true if the number is an integer
  return true if [0,1].include? number
  # split the number into an array using "chars method" and map over it
  digits_arr = number.digits.reverse
  product = subset_product(digits_arr)
  product.uniq == product ? true : false

  # if product output is uniq return true, hecne false

end

def subset_product(digits)
  product = digits.dup
  # Multiply the consecutive subset of number
  if digits.size > 1
    product << digits[0] * digits[1]
  end
  if digits.size > 2
    product << digits[1] * digits[2]
    product << digits[0] * digits[2] * digits[3]
  end
  product
end
