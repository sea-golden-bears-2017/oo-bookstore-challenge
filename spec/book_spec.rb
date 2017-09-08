require 'rspec'
require_relative '../book.rb'


describe 'book' do
  let(:book_hash) {{:id => "1",
    :title => "After Many a Summer Dies the Swan",
    :author => "Mustafa Mayer MD", :genre => "Fairy tale",
    :price => "83.42", :quantity=> "17", :isbn => "0-194-607033-0"}}
  let(:book) { Book.new(book_hash) }

  it 'has an id' do
    expect(book.id).to eq "1"
  end

  it 'has a title' do
    expect(book.title).to eq "After Many a Summer Dies the Swan"
  end

  it 'has an author' do
    expect(book.author).to eq "Mustafa Mayer MD"
  end

  it 'has a genre' do
    expect(book.genre).to eq "Fairy tale"
  end

  it 'has a price' do
    expect(book.price).to eq 83.42
  end

  it 'has a count' do
    expect(book.quantity).to eq 17
  end

  it 'has an isbn' do
    expect(book.isbn).to eq "0-194-607033-0"
  end

end
