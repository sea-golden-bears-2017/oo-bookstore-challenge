require 'rspec'
require_relative '../book'

describe Book do
  it 'has a title' do
    book = Book.new({title:"Harry Potter and the Sorceror's Stone"})
    expect(book.title).to eq("Harry Potter and the Sorceror's Stone")
  end
  it 'has an author' do
    book = Book.new({author:"J.K. Rowling"})
    expect(book.author).to eq("J.K. Rowling")
  end

  it 'has a price' do

  end

  it 'has a genre' do
  end

  it 'has quantity' do

  end

  it 'has an isbn' do

  end

  it 'has an condition' do

  end

  it 'has a publisher' do

  end

  it 'explodes when stolen' do

  end

  it 'has a format' do

  end

  it 'has a cost' do

  end
end
