class Statement

  def print_statement(transactions)
    transactions.each do |transaction|
      puts "#{transaction.type} #{transaction.amount} #{transaction.balance} #{transaction.date}"
    end
  end
end
