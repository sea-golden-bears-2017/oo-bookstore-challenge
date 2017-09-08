require_relative '../bookstore'
require_relative '../employee'
require_relative '../transaction'

describe BookStore do
  let(:book_hash) {{:id => "1",:title => "After Many a Summer Dies the Swan", :author => "Mustafa Mayer MD", :genre => "Fairy tale", :price => "83.42", :count => "17", :isbn => "0-194-607033-0"}}
  let(:book) { Book.new(book_hash) }
  let(:employee) { Employee.new }
  let(:transaction) { Transaction.new({}) }
  let(:bookstore) { BookStore.new }

  it 'has books' do
    bookstore.add_book(book)
    expect(bookstore.books.empty?).to eq(false)
  end

  it 'has discount' do
    expect(bookstore.discount).to be_nil
  end

  it 'returns a book'

  it 'has employees' do
    bookstore.add_employee(employee)
    expect(bookstore.employees.empty?).to eq(false)
  end

  it 'has revenue' do
    expect(bookstore.revenue).to eq(1.0)
  end

  it 'has transactions' do
    bookstore.add_transaction(transaction)
    expect(bookstore.transactions.empty?).to eq(false)
  end

  it 'books attribute is not empty after initialization' do
    expect(bookstore.books).to_not eq []
  end

  it '#populate_books adds books to books attribute' do
    bookstore.populate_books
    is_book = true
    is_book = false if bookstore.books.empty?
    bookstore.books.each do |book|
      if book.class != Book
        is_book = false
        break
      end
    end
    expect(is_book).to be_truthy
  end

  xit 'parses csv file into array of hashes (PRIVATE NOW)' do
    expect(bookstore.parse_csv('invoice.csv')).to_not eq([])
  end

  describe '#determine_discount' do
    # context 'stuff' do
      it 'determines discount percentage given an object' do
        bookstore.update_discount({:attribute => :genre, :attribute_value => "Biography/Autobiography", :discount_percentage => 0.2})
        this_book = bookstore.books[0]
        expect(bookstore.determine_discount(this_book)).to eq 0.2
      end
    # end
  end


end
