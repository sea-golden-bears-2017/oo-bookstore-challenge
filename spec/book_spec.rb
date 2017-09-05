require 'rspec'
require_relative '../book.rb'

describe Book do
  let(:book_args) { {title: "Waiting for the Barbarians", author: "Mr. Mylene Daniel", genre: "Realistic fiction", price: 93.46, count: 13, isbn: 0-706-340280-3} }

  let(:book) { Book.new(book_args) }

  it 'has a title' do
    expect(book.title).to eq 'Waiting for the Barbarians'
  end

  it "has a author" do
    expect(book.author).to eq "Mr. Mylene Daniel"
  end

  it "has a genre" do
    expect(book.genre).to eq "Realistic fiction"
  end

  it "has a price" do
    expect(book.price).to eq 93.46
  end

  it "has an isbn" do
    expect(book.isbn).to eq 0-706-340280-3
  end

  it "has a publisher" do
    expect(book.publisher).to_not be(nil)
  end

  it "has a condition" do
    expect(book.condition).to_not be(nil)
  end

  it "has a format" do
    expect(book.book_format).to_not be(nil)
  end

  # it "has a shelf" do
  #
  # end

  it "has a quantity" do
    expect(book.count).to eq 13
  end
end
