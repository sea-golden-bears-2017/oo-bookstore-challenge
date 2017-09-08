require 'rspec'
require_relative '../cash_register'
require_relative '../bookstore'
require_relative '../book'

describe CashRegister do
  let(:cash_register) { CashRegister.new }
  let(:book) { Book.new({id: 7, title: "In a Glass Darkly", author: "Miss Marisa Balistreri", genre: "Crime/Detective", price: 29.63, count: 24, isbn: "0-599-648299-6"}) }

  describe 'attributes' do
    it 'has a till' do
      expect(cash_register.till).to eq(0)
    end

    it 'has transactions' do
      expect(cash_register.transactions).to eq([])
    end
  end

  describe 'methods' do
    describe '#sell' do
      it 'creates a new transaction object' do
        cash_register.sell()
        expect(cash_register.transactions.length).to eq [1]
        # add a transaction(receipt) with transaction_type of 'sell'
      end
  end

    xit '#buy' do
      # Something like if we have enough money in the till we will buy the book
    end

    xit '#return' do
    end

    xit '#membership' do
    end

    xit '#cash_drop' do
    end

    xit '#discount' do
    end
  end
end
