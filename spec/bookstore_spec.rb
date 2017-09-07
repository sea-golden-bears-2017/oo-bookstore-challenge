require_relative '../bookstore'
require_relative '../employee'
require_relative '../transaction'
require_relative '../cash_register'

describe BookStore do
  let(:book_hash) {{:id => "1",:title => "After Many a Summer Dies the Swan", :author => "Mustafa Mayer MD", :genre => "Fairy tale", :price => "83.42", :count => "17", :isbn => "0-194-607033-0"}}
  let(:book) { Book.new(book_hash) }
  let(:employee) { Employee.new }
  let(:transaction) { Transaction.new }

  let(:bookstore) { BookStore.new }

  it 'has books' do
    bookstore.add_book(book)
    expect(bookstore.books.empty?).to eq(false)
  end

  it 'has employees' do
    bookstore.add_employee(employee)
    expect(bookstore.employees.empty?).to eq(false)
  end

  it 'has revenue' do
    expect(bookstore.revenue).to eq(1.0)
  end

  it 'has a register' do
    expect(bookstore.register).to be_an_instance_of CashRegister
  end
end
