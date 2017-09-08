require 'rspec'
require_relative '../model'


describe Book do
  let(:book) { Book.new({id: 1, title: 'Ham'})}
  it 'returns an array of all books' do
    Book.add(book)
    expect(Book.all).to include(book)
  end
end
