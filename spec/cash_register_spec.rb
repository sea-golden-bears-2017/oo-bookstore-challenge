require 'rspec'
require_relative '../cash_register'
require_relative '../book'
require_relative '../bookstore'

describe CashRegister do
  let(:book) { Book.new({title: "Harry Potter and the Philosopher's Stone",
                         author: "J.K. Rowling",
                         price: 12.50,
                         genre: "Fiction",
                         quantity: 4,
                         isbn: 9788700631625,
                         condition: "New",
                         publisher: "Scholastic",
                         book_format: "Hard Cover",
                         cost: 7.17})}

let (:book_store) { BookStore.new({hours: "10 AM - 10 PM",
                           sections: {"Fiction" => [],
                                     "Non-Fiction" => []}})}

let (:register_1) { CashRegister.new(300) }

  context 'POS Module Actions' do
    it 'sells item to customers' do
      expect(register_1.sell((register_1.till), book)).to eq(312.50)
    end

    it 'checks is quantity is decreased per sale' do
      register_1.sell((register_1.till), book)
      expect(book.quantity).to eq (3)
    end

    it 'buys item from publisher' do
      expect(register_1.purchase((register_1.till), book)).to eq(292.83)
    end

    it 'checks is quantity is increased per sale' do
      register_1.purchase((register_1.till), book)
      expect(book.quantity).to eq (5)
    end

    it "allows returns" do
      expect(register_1.return_item(register_1.till, book)).to eq(287.50)
    end

  end


  context "CashRegister Actions" do
    it 'update till using transaction' do
      register_1.sell_book(book)
      expect(register_1.till).to eq 312.50
    end

    it 'update till using transaction' do
      register_1.return_book(book)
      expect(register_1.till).to eq 287.50
    end


  end


end
