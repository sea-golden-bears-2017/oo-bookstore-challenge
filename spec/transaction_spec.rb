require 'rspec'
require_relative '../transaction'

describe "Transaction" do
  let(:first_transaction) {Transaction.new}
  let(:second_transaction) {Transaction.new}

  context "Each Transaction" do
    it 'ID counter starts at 0' do
      expect(Transaction.id_counter).to eq 0
    end

    it 'Has an ID' do
      expect(first_transaction.id).to eq 0
    end
    
    it 'Transaction ID increments every transaction' do
      expect(second_transaction.id).to eq 1
    end

  end
end
