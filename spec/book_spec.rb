require_relative '../bookstore'
require_relative '../book'

describe 'Book' do
    let(:book) { Book.new({
      quantity: 5,
      title: "Blaines Adventure",
      author: "Miguel The Great",
      genre: "Sci-Fi",
      book_format: "Hardcover",
      isbn: "0-472-803097-3",
      price: 36.45,
      condition: "New",
      cost: 12.00,
      publisher: "DBC Textbooks",
      rating: 5,
      device_armed: false
      }) }
    let(:unpurchased_book) { Book.new({
      quantity: 5,
      title: "Blaines Adventure",
      author: "Miguel The Great",
      genre: "Sci-Fi",
      book_format: "Hardcover",
      isbn: "0-472-803097-3",
      price: 36.45,
      condition: "New",
      cost: 12.00,
      publisher: "DBC Textbooks",
      rating: 5,
      device_armed: true
      }) }

  context 'Book Qualities' do
    it "Book has quantity" do
      expect(book.quantity).to eq 5
    end

    it "Book has Title" do
      expect(book.title).to eq "Blaines Adventure"
    end

    it "Book has Author" do
      expect(book.author).to eq "Miguel The Great"
    end

    it "Book has Genre" do
      expect(book.genre).to eq "Sci-Fi"
    end

    it "Book has Format" do
      expect(book.book_format).to eq "Hardcover"
    end

    it "Book has ISBN" do
      expect(book.isbn).to eq "0-472-803097-3"
    end

    it "Book has Price" do
      expect(book.price).to eq 36.45
    end

    it "Book has Condition" do
      expect(book.condition).to eq "New"
    end

    it "Book has Cost" do
      expect(book.cost).to eq 12.00
    end

    it "Book has Publisher" do
      expect(book.publisher).to eq "DBC Textbooks"
    end

    it "Book has Rating" do
      expect(book.rating).to eq 5
    end

    it 'Book is armed when not purchased' do
      expect(unpurchased_book.device_armed).to eq true
    end

    it 'Book is unarmed when purchased' do
      expect(book.device_armed).to eq false
    end

  end

  context "Book Behaviours" do
    it "Book explodes when stolen" do
      expect(unpurchased_book.book_exploder).to eq "EXPLODE!!! (You're dead.)"
    end

    it "Book does not explode when purchased" do
      expect(book.book_exploder).to eq "Thanks for shopping with us!"
    end

  end

end
