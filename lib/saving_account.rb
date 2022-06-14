class SavingsAccount
  def interest_rate(balance)
    if balance == 0
      -3.212
    elsif balance < 1000
      0.5
    elsif balance >= 1000 && balance < 5000
      1.621
    else
      2.475
    end
  end

  def annual_balance_update(balance)
    (balance * interest_rate(balance).abs/100) + balance
  end

  def years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance <= desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end
    years
  end
end
