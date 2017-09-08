require 'rspec'
require_relative '../tshirt'

describe "TShirt Product" do
  let(:tshirt) { Tshirt.new({
      quantity: 3,
      price: 9.99,
      cost: 2.50,
      sku: 2012,
      exploded: false,
      size: "L",
      color: "Blue"
    }) }

  context "Testing Tshirt Class" do
    it "Each shirt inherits from product" do
      expect(tshirt.quantity).to eq 3
    end
    it 'Has a size' do
      expect(tshirt.size).to eq "L"
    end
    it 'Has a color' do
      expect(tshirt.color).to eq "Blue"
    end

  end


end
