require 'rspec'
require_relative '../book'

describe Book do
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
  it 'has a title' do
    expect(book.title).to eq("Harry Potter and the Philosopher's Stone")
  end
  it 'has an author' do
    expect(book.author).to eq("J.K. Rowling")
  end

  it 'has a price' do
    expect(book.price).to eq(12.50)
  end

  it 'has a genre' do
    expect(book.genre).to eq("Fiction")
  end

  it 'has quantity' do
    expect(book.quantity).to eq(4)
  end

  it 'can reduce quantity' do
    book.reduce(2)
    expect(book.quantity).to eq(2)
  end

  it 'can increase in quantity' do
    book.increase(3)
    expect(book.quantity).to eq(7)
  end

  it 'has an isbn' do
    expect(book.isbn).to eq(9788700631625)
  end

  it 'has an condition' do
    expect(book.condition).to eq("New")
  end

  it 'has a publisher' do
    expect(book.publisher).to eq("Scholastic")
  end

  it 'explodes when stolen' do
    book.explode
    expect(book.exploded).to eq(true)
  end

  it 'has a format' do
    expect(book.book_format).to eq("Hard Cover")
  end

  it 'has a cost' do
    expect(book.cost).to eq(7.17)
  end
end
