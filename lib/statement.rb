class Statement

  def print_statement(transactions)
    puts 'date || credit || debit || balance'
    transactions.each do |transaction|
      if transaction.type == :deposit
        puts "#{transaction.date.strftime('%d/%m/%Y')} || #{transaction.amount} || || #{transaction.balance}"
      else
        puts "#{transaction.date.strftime('%d/%m/%Y')} || || #{transaction.amount} || #{transaction.balance}"
      end
    end
  end
end
