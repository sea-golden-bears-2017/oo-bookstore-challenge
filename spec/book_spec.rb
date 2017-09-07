require_relative '../book.rb'
require_relative '../product.rb'
describe Book do
  let(:info) { {quantity: 1, title: "yo", author: "marlo", genre: "thriller", cover_style: "soft", isbn: 0-374-150159-0, price: 10.95, publisher: "string", cost: 5.95} }
  #let(:product) { Product.new(info)}
  let(:book) { Book.new(info) }


  it "has a quantity" do
    expect(book.quantity).to eq 1
  end

  it "has a title" do
    expect(book.title).to eq "yo"
  end

  it "has an author" do
    expect(book.author).to eq "marlo"
  end

  it "has a genre" do
    expect(book.genre).to eq "thriller"
  end

  it "has a cover_style" do
    expect(book.cover_style).to eq "soft"
  end

  it "has an isbn" do
    expect(book.isbn).to eq 0-374-150159-0
  end

  it "has a price" do
    expect(book.price).to eq 10.95
  end

  it "has a publisher" do
    expect(book.publisher).to eq "string"
  end

  it "has a cost" do
    expect(book.cost).to eq 5.95
  end
end
