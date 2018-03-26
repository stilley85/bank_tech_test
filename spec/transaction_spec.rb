require 'transaction'
require 'timecop'

describe Transaction do

  subject(:transaction) { described_class.new("deposit", 10, 100) }

  before { Timecop.freeze(Time.now) }

  context '#initialize' do
    it 'initializes with a type' do
      expect(transaction.type).to eq("deposit")
    end

    it 'initializes with an amount' do
      expect(transaction.amount).to eq(10)
    end

    it 'initializes with a balance' do
      expect(transaction.balance).to eq(100)
    end

    it 'initializes with the current date' do
      expect(transaction.date).to eq(Time.now)
    end
  end

end
