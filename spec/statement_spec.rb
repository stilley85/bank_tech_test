require 'statement'

describe Statement do
  subject(:statement) { described_class.new }
  let(:deposit) { double 'A deposit', type: :deposit, amount: 50, balance: 50, date: 'date' }
  let(:withdraw) { double 'A withdraw', type: :withdraw, amount: 10, balance: 40, date: 'date' }
  let(:transactions) { [deposit, withdraw] }

  context '#print_statement' do
    it 'prints a list of transactions' do
      show = "deposit 50 50 date\nwithdraw 10 40 date\n"
      expect{statement.print_statement(transactions)}.to output(show).to_stdout
    end
  end
end
