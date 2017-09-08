# require 'rspec'
require_relative '../model'

describe Book do
  let(:book) { Book.new({id: 1, title: 'Ham'})}
  describe 'attributes' do
    it 'has a readable title' do
      expect(book.title).to eq(book.title)
    end
    it 'has a readable id' do
      expect(book.id).to eq(book.id)
    end

  end
  describe '.all' do
    it 'returns an array of all books' do
      expect(Book.all).to include(book)
    end
  end
  describe '.new' do
    it 'gets added to the @@books collection upon initialization' do
      expect(Book.all).to include(book)
    end
  end
end
