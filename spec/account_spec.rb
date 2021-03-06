require 'account'

describe Account do
  let(:transaction) { double('A Transaction', new: :transaction_object) }
  subject(:account) { described_class.new(transaction) }
  subject(:rich_account) { described_class.new(transaction, 999999999) }

  context '#initialize' do
    it 'initializes with a default balance of 0' do
      expect(account.balance).to eq(0)
    end

    it 'initializes with a given balance' do
      expect(rich_account.balance).to eq(999999999)
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
      expect(transaction).to receive(:new).with(:deposit, 50, 50)
      account.deposit(50)
    end

    it 'adds a new transaction to the transactions array' do
      account.deposit(50)
      expect(account.transactions).to include(:transaction_object)
    end
  end

  context '#withdraw' do
    it 'removes 50 from the balance when 50 is withdrawn' do
      account.withdraw(50)
      expect(account.balance).to eq(-50)
    end

    it 'creates a new transaction object' do
      expect(transaction).to receive(:new).with(:withdraw, 50, -50)
      account.withdraw(50)
    end

    it 'adds a new transaction to the transactions array' do
      account.withdraw(50)
      expect(account.transactions).to include(:transaction_object)
    end
  end

  context '#print_statement' do
    it 'prints a statement' do
      allow(account).to receive(:print_statement).and_return('A statement')
      expect(account.print_statement).to eq('A statement')
    end
  end
end
