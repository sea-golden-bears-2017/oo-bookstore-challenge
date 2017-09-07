require 'rspec'
require_relative '../bookstore'

describe BookStore do
  let(:bookstore) { BookStore.new }
  describe "attributes" do

    describe "#closed" do
      it "is bookstore closed?" do
        expect(bookstore.closed).to eq(true)
      end
    end
  end

  describe "methods" do

    describe "#close" do
      it "Can the bookstore close?" do
        bookstore.close
        expect(bookstore.closed).to eq(true)
      end
    end

    describe "#open" do
      it "Can the bookstore open?" do
        expect(bookstore.opens).to eq(@closed == false)
      end
    end

    describe "#hours" do
      it "Hours are posted when requested" do
        expect(bookstore.hours("tuesday")).to eq("8am - 4pm")
      end
    end

    describe "#purchase" do
      it "purchases book (adds books to book_array)" do
        bookstore.purchase()
        expect(bookstore.books_array.length).to_not eq(0)
      end
    end
  end
end
