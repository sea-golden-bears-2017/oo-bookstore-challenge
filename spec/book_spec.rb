require 'rspec'
require_relative '../book'

describe 'Book' do
  let(:book) {Book.new({
    title: "The Yellow Meads of Asphodel",
    author: 'Miss Gerardo Harber',
    genre: 'Mythopoeia',
    price: 10.37,
    count: 24,
    isbn: '0-278-814673-6'
    })}

  it 'has a title' do
    expect(book.title).to eq("The Yellow Meads of Asphodel")
  end

  it 'has an author' do
    expect(book.author).to eq("Miss Gerardo Harber")
  end

  it 'has a genre' do
    expect(book.genre).to eq("Mythopoeia")
  end

  it 'has price' do
    expect(book.price).to eq(10.37)
  end

  it 'has an count' do
    expect(book.count).to eq(24)
  end

  it 'has an isbn' do
    expect(book.isbn).to eq("0-278-814673-6")
  end


end
