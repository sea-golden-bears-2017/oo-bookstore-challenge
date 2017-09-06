require 'rspec'
require_relative '../bookstore'

describe BookStore do
  let(:bookstore) { BookStore.new }

  describe "bookstore methods"
    it "is bookstore closed?" do
      expect(bookstore.store_closed).to eq(true)
    end

    it "Can the bookstore close?" do
      expect(bookstore.close_store).to eq(@store_closed == true)
    end

    it "Can the bookstore open?" do
      expect(bookstore.open_store).to eq(@store_closed == false)
    end

    it "Hours are posted when requested" do
      expect(bookstore.hours("tuesday")).to eq("8am - 4pm")
    end

end
