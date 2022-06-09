def colorful?(number)
  # number should not be above 3 digit
  # return true if the number is an integer
  # split the number into an array using chars method and
  # map over it to convert back to integer
  # Multiply the consecutive subset of number
  # if product output is uniq return true, hecne false

end

# 263 is a colorful number because (2, 6, 3, 2x6, 6x3, 2x6x3) are all different
# 236 is not because (2, 3, 6, 2x3, 3x6, 2x3x6) have 6 twice
