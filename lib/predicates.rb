class PredicateEnumerables

  def coffee_drink?(drink_list)
    drink_list.include?("coffee") || drink_list.include?("espresso")
  end

  def correct_guess?(guess_list, number)
    guess_list.any?(number)
  end
end
