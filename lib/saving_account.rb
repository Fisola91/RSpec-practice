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
    (balance * 0.5/100) + balance
  end
end
