require 'pry'

module SavingsAccount
  def self.interest_rate(balance)
    if balance.negative?
      return 3.213
    elsif balance >= 1000 && balance < 5000
      return 1.621
    elsif balance >= 5000
      return 2.475
    elsif balance < 1000
      return 0.5
    end
  end

  def self.annual_balance_update(balance)
    (balance * (interest_rate(balance)/100))+ balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    new_bal = current_balance
    years = 0
    until new_bal >= desired_balance
      difference = annual_balance_update(new_bal) - new_bal
      new_bal = new_bal + difference
      years += 1
    end
    years
  end
end

SavingsAccount.years_before_desired_balance(200.75, 214.88)
