class Transaction

  attr_reader :type, :amount, :balance

  def initialize(type, amount, balance)
    @type = type
    @amount = amount
    @balance = balance
  end

end
