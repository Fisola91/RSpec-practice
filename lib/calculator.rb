class Calculator
  def divide(number:, divisor:)
    if divisor == 0
      raise ArgumentError, "Come on, don't give me zero"
    end

    number / divisor
  end
end
