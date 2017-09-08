require 'rspec'
require_relative '../product'

describe Product do
  let(:product) {Product.new({price: 10, quantity: 2, cost: 6, shelf: "Knick-knacks", condition: "new"})}

  it "has a price" do
    expect(product.price).to eq 10
  end

  it "has a quantity" do
    expect(product.quantity).to eq 2
  end

  it "has a cost" do
    expect(product.cost).to eq 6
  end

  it "has a shelf" do
    expect(product.shelf).to eq "Knick-knacks"
  end

  it "has a condition" do
    expect(product.condition).to eq "new"
  end
end
