require 'statement'
require 'timecop'

describe Statement do
  subject(:statement) { described_class.new }
  let(:deposit) { double 'A deposit', type: :deposit, amount: 50, balance: 50, date: Time.now }
  let(:withdraw) { double 'A withdrawal', type: :withdraw, amount: 10, balance: 40, date: Time.now }
  let(:transactions) { [deposit, withdraw] }

  before { Timecop.freeze(Time.now) }

  context '#print_statement' do
    it 'prints a list of transactions' do
      expect{statement.print_statement(transactions)}.to output(<<~MESSAGE).to_stdout
      date || credit || debit || balance
      #{Time.now.strftime('%d/%m/%Y')} || || 10 || 40
      #{Time.now.strftime('%d/%m/%Y')} || 50 || || 50
      MESSAGE
    end
  end
end
