class Account

  DEFAULT_BALANCE = 0

  attr_reader :balance

  def initialize
    @balance = DEFAULT_BALANCE
  end

  def deposit(total)
    @balance += total
  end

  def withdraw(total)
    @balance -= total
  end

end
