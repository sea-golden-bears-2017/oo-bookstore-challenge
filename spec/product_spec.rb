require 'rspec'
require_relative '../product'

describe "Dummy Product" do
  let(:dummy) { Product.new({
    quantity: 1,
    price: 17.38,
    cost: 3.50,
    sku: 1337,
    exploded: false
    }) }

  context "Verify working variables within product" do
    it "has a SKU" do
      expect(dummy.sku).to eq 1337
    end

  end


end
