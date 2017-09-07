require 'rspec'
require_relative '../cash_register'
require_relative '../book'
require_relative '../bookstore'
require_relative '../employee'

describe CashRegister do
  let(:book) { Book.new({title: "Harry Potter and the Philosopher's Stone",
                         author: "J.K. Rowling",
                         price: 12.50,
                         genre: "Fiction",
                         quantity: 4,
                         isbn: 9788700631625,
                         condition: "New",
                         discounted: false,
                         publisher: "Scholastic",
                         book_format: "Hard Cover",
                         cost: 7.17})}

let (:book_store) { BookStore.new({hours: "10 AM - 10 PM",
                           sections: {"Fiction" => [],
                                     "Non-Fiction" => []}})}

let (:worker) { Employee.new({id: 123}) }

let (:cash_register) { CashRegister.new(300) }
  it 'can buy books' do
    book_store.books_inventory = {book.isbn => book}
    cash_register.purchase(book, book_store.books_inventory, worker)
    expect(book_store.books_inventory.length).to eq(1)
  end

  it 'can sell a book' do
    book_store.books_inventory = {book.isbn => book}
    cash_register.sell(book, book_store.books_inventory, worker)
    expect(book_store.books_inventory[book.isbn].quantity).to eq(3)
  end

  it 'increases revenue when we make a sale' do
    book_store.books_inventory = {book.isbn => book}
    cash_register.sell(book, book_store.books_inventory, worker)
    expect(cash_register.till).to eq(300 + 12.50)
  end

  it 'has a cash register' do
    expect(cash_register.till).to eq(300)
  end

  it "decreases revenue when we make a purchase" do
    book_store.books_inventory = {book.isbn => book}
    cash_register.purchase(book, book_store.books_inventory, worker)
    expect(cash_register.till).to eq(300 - 12.50)
  end

  it "increases inventory when a return happens" do
    book_store.books_inventory = {book.isbn => book}
    cash_register.return(book, book_store.books_inventory, worker)
    expect(cash_register.till).to eq(300 - 12.50)
    expect(book_store.books_inventory[book.isbn].quantity).to eq(5)
  end

  it "applies discounts when the book is on discount" do
    book_store.books_inventory = {book.isbn => book}
    book.discounted = true
    cash_register.sell(book, book_store.books_inventory, worker)
    expect(cash_register.till).to eq(300 + (12.50 * 0.85))
  end

  it "can drop cash after a sale" do
    cash_register.cash_drop(100)
    expect(cash_register.till).to eq(400)
  end

  it "can purchase new books" do
    expect do
      cash_register.purchase(book, book_store.books_inventory, worker)
    end.to_not raise_error
  end
end
