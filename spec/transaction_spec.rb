require 'transaction'

describe Transaction do

  subject(:transaction) { described_class.new("deposit", 10) }

  context '#initialize' do
    it 'initializes with a type' do
      expect(transaction.type).to eq("deposit")
    end

    it 'initializes with an amount' do
      expect(transaction.amount).to eq(10)
    end
  end

end
