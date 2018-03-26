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
    @transactions << @transaction.new(:deposit, total, balance)
  end

  def withdraw(total)
    @balance -= total
    @transactions << @transaction.new(:withdraw, total, balance)
  end

  def print_statement
    @statement = Statement.new
    @statement.print_statement(transactions)
  end
end
