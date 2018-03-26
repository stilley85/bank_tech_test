class Account

  DEFAULT_BALANCE = 0

  attr_reader :balance, :transactions

  def initialize(transaction = Transaction)
    @balance = DEFAULT_BALANCE
    @transactions = []
    @transaction = transaction
  end

  def deposit(total)
    @balance += total
    deposit_transaction = @transaction.new("deposit", total)
    @transactions << deposit_transaction
  end

  def withdraw(total)
    @balance -= total
    withdraw_transaction = @transaction.new("withdraw", total)
    @transactions << withdraw_transaction
  end

end
