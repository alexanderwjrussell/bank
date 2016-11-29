class Transaction

  attr_reader :history

  def initialize
    @history = []
  end

  def record_credit(credit, balance, time=Time)
    @history << [time.now, credit,nil, balance]
  end

  def record_debit(debit, balance, time=Time)
    @history << [time.now, nil, debit, balance]
  end

end
