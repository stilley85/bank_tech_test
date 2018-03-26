class Account

  DEFAULT_BALANCE = 0

  attr_reader :balance, :transactions

  def initialize
    @balance = DEFAULT_BALANCE
    @transactions = []
  end

  def deposit(total)
    @balance += total
  end

  def withdraw(total)
    @balance -= total
  end

end
