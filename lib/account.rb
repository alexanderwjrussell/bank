require_relative 'transaction'

class Account

  attr_reader :balance, :transaction_history

  def initialize(balance = 0, transaction_history = Transaction.new)
    @balance = balance
    @transaction_history = transaction_history
  end

  def credit(amount)
    @balance += amount
    @transaction_history.record_credit(amount, balance)
  end

  def debit(amount)
    fail "Insufficient funds for transaction" if balance < amount
    @balance -= amount
    @transaction_history.record_debit(amount, balance)
  end

  def get_history
    transaction_history.history
  end
end
