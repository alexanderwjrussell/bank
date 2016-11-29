class Transaction

  attr_reader :history

  def initialize(type = "", amount = "")
    @history = []
    @type = type
    @amount = amount
  end

end
