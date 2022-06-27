class PredicateEnumerables

  def coffee_drink?(drink_list)
    drink_list.include?("coffee") || drink_list.include?("espresso")
  end

  def correct_guess?(guess_list, number)
    guess_list.any?(number)
  end

  def twenty_first_century_years?(year_list)
    raise ArgumentError, "The year_list can't be empty" if year_list.empty?
    year_list.all? { |year| year.between?(2001, 2100)}
  end

  def valid_scores?(score_list, perfect_score)
    score_list.one? { |list, value| score_list[list] == perfect_score}
  end

  def correct_format?(word_list)
    word_list.none? { |list| !list.upcase }
  end
end
