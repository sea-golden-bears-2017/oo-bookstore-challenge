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

  end

  it 'has a genre' do

  end

  it 'has a isbn' do

  end

  it 'has a format' do

  end

  it 'has a price' do

  end

  it 'has a condition' do

  end

  it 'has a cost' do

  end

  it 'has a publisher' do

  end
end
end #end describe book
