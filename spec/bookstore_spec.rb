require 'rspec'
require_relative '../bookstore'

describe BookStore do
  let(:bookstore) { BookStore.new }

  describe "bookstore methods"
    describe "#closed" do
      it "is bookstore closed?" do
        expect(bookstore.closed).to eq(true)
      end
    end
    it "Can the bookstore close?" do
      expect(bookstore.close).to eq(@closed == true)
    end

    it "Can the bookstore open?" do
      expect(bookstore.opens).to eq(@closed == false)
    end

    it "Hours are posted when requested" do
      expect(bookstore.hours("tuesday")).to eq("8am - 4pm")
    end

end
