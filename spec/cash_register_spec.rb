require 'rspec'
require_relative '../cash_register'
require_relative '../bookstore'
require_relative '../book'
require_relative '../appraisable'

describe CashRegister do
  let(:cash_register) { CashRegister.new { include Appraisable } }
  let(:book) { Book.new({id: 7, title: "In a Glass Darkly", author: "Miss Marisa Balistreri", genre: "Crime/Detective", price: 30, count: 24, isbn: "0-599-648299-6"}) }

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
      xit 'creates a new transaction object' do
        cash_register.sell()
        expect(cash_register.transactions.length).to eq [1]
        # add a transaction(receipt) with transaction_type of 'sell'
      end
  end

  describe '#buy'
    it 'returns 0.4 if condition is near mint' do
      book.condition = "near mint"
      expect(cash_register.appraise(book)).to eq(0.4)
    end

    it 'returns 0.5 if condition is mint' do
      book.condition = 'mint'
      expect(cash_register.appraise(book)).to eq(0.5)
    end

    it 'removes 15 dollars from till if mint book is bought' do
      cash_register.till = 30
      book.condition = 'mint'
      cash_register.buy(book)
      expect(cash_register.till).to eq(15)
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
