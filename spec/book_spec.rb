require 'rspec'
require_relative '../book'

describe Book do
  let(:book) { Book.new({id: 7, title: "In a Glass Darkly", author: "Miss Marisa Balistreri", genre: "Crime/Detective", price: 29.63, count: 24, isbn: "0-599-648299-6"}) }

  describe "book attributes"
    it "has an ID" do
      expect(book.id).to eq(7)
    end
    it "has a condition" do
      expect(book.condition).to_not be nil
    end
    it "has a title" do
      expect(book.title).to eq("In a Glass Darkly")
    end
    it "has an author" do
      expect(book.author).to eq("Miss Marisa Balistreri")
    end
    it "has a genre" do
      expect(book.genre).to eq("Crime/Detective")
    end
    it "has a price" do
      expect(book.price).to eq(29.63)
    end
    it "has a count" do
      expect(book.count).to eq(24)
    end
    it "has an isbn" do
      expect(book.isbn).to eq("0-599-648299-6")
    end
end
