require 'account'

describe Account do

  let(:transaction) { double("A Transaction", new: :deposit_transaction) }
  subject(:account) { described_class.new(transaction) }

  context '#initialize' do
    it 'initializes with a balance of 0' do
      expect(account.balance).to eq(0)
    end

    it 'initializes with an empty array of transactions' do
      expect(account.transactions).to eq([])
    end
  end

  context '#deposit' do
    it 'adds 50 to the balance when 50 is deposited' do
      account.deposit(50)
      expect(account.balance).to eq(50)
    end

    it 'creates a new transaction object' do
      expect(transaction).to receive(:new).with("deposit", 50)
      account.deposit(50)
    end

  end

  context '#withdraw' do
    it 'removes 50 from the balance when 50 is withdrawn' do
      account.withdraw(50)
      expect(account.balance).to eq(-50)
    end
  end
end
