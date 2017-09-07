require 'rspec'
require_relative 's../transaction'

describe CashRegister do
  it 'has transactions' do
    bookstore.add_transaction(transaction)
    expect(bookstore.transactions.empty?).to eq(false)
  end
end
