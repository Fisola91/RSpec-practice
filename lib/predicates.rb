class PredicateEnumerables

  def coffee_drink?(drink_list)
    drink_list.include?("coffee") || drink_list.include?("espresso")
  end

  def correct_guess?(guess_list, number)
    guess_list.any?(number)
  end

  def twenty_first_century_years?(year_list)
    year_list.all? { |year| year.between?(2001, 2100)}
  end
end
