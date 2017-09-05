require 'rspec'
require_relative '../book'

describe Book do
describe "initialization of book" do
let(:package) {{
  title: "The Man Within",
  author: "Lon Crist I",
  genre: "Fiction narrative",
  price: "78.61",
  count: "13",
  isbn: "0-154-522640-7"
  }
}

let(:book) {Book.new(package)}

  it 'has a quantity' do
    expect(book.quantity).to be > 0
  end

  it 'has a title' do
    expect(book.title).to eq "The Man Within"
  end

  it 'has an author' do
    expect(book.author).to eq "Lon Crist I"
  end

  it 'has a genre' do
    expect(book.genre).to eq "Fiction narrative"
  end

  it 'has a isbn' do
    expect(book.isbn).to eq "0-154-522640-7"
  end

  it 'has a format (style)' do
    expect(book.style).to satisfy {|style| style == "Hard Cover" || style == "Paperback"}
  end

  it 'has a price' do
    expect(book.price).to eq 78.61
  end

  it 'has a condition' do
    expect(book.condition).to eq "New"
  end

  it 'has a cost' do
    expect(book.cost).to eq 78.61/2
  end

  it 'has a publisher' do
    expect(book.publisher).to eq "Self-published: #{book.author}"
  end
end
end #end describe book
