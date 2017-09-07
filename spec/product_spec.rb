require_relative '../product'
require 'rspec'

describe Product do
  let(:product) {Product.new({
    price: 250.0,
    cost: 150.0,
    quantity: 2
    })}

  it 'has a price' do
    expect(product.price).to eq (250.0)
  end
  it 'has a cost' do
    expect(product.cost).to eq(150.0)
  end
  it 'has a quantity' do
    expect(product.quantity).to eq(2)
  end

end
