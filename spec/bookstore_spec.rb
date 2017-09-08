require 'rspec'
require_relative '../bookstore'
require_relative '../book'


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

    describe "#load_stock" do
      it "purchases book (adds books to book_array)" do
        bookstore.load_stock('invoice.csv')
        expect(bookstore.books_array.length).to_not eq(0)
      end
    end

    describe '#hire' do
      it "hires new employees" do
        expect(bookstore.employees.length).to_not be(0)
      end
    end




  end
end
