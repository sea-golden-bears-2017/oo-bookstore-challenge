require 'rspec'
require_relative '../product'

describe "Product" do
  let(:args){{id: "1001", name: "shirt", price: 20.00, cost: 5.00, condition: "new", quantity: 10}}
  let(:product) {Product.new(args)}

  it 'has a name' do
    expect(product.name).to eq "shirt"
  end

  it 'has price' do
    expect(product.price).to eq 20.00
  end
  it 'has a cost' do
    expect(product.cost).to eq 5.00
  end
  it 'has a condition' do
    expect(product.condition).to eq "new"
  end
  it 'has a quantity' do
    expect(product.quantity).to eq 10
  end

end
