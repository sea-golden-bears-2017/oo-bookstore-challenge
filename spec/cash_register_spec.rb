require 'rspec'
require_relative '../transaction'

describe CashRegister do
  xit 'has transactions' do
    bookstore.add_transaction(transaction)
    expect(bookstore.transactions.empty?).to eq(false)
  end
end
