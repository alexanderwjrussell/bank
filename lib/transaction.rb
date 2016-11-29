class Transaction

  attr_reader :history

  def initialize
    @history = []
  end

  def record_credit(credit, balance, time=Time)
    @history << [time.now, credit,nil, balance]
  end

end
