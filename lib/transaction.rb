class Transaction
  attr_reader :type, :amount, :balance, :date

  def initialize(type, amount, balance)
    @type = type
    @amount = amount
    @balance = balance
    @date = Time.now
  end
end
