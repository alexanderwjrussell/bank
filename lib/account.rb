class Account

  def initialize(balance = 0)
    @balance = balance
  end

  def balance
    @balance
  end

  def credit(amount)
    @balance += amount
  end

  def debit(amount)
    fail "Insufficient funds for transaction" if balance < amount
    @balance -= amount
  end
end
