require 'rspec'
require_relative '../tshirt'

describe 'TShirt' do
  let(:args){{id: "1001", size: "medium", color: "blue", manufacturer: "champion", design: "bookstore logo", name: "tshirt", price: 20.00, cost: 5.00, condition: "new", quantity: 10}}
let(:tshirt) {TShirt.new(args)}

  it 'has a size' do
    expect(tshirt.size).to eq("medium")
  end

  it 'has a color' do
    expect(tshirt.color).to eq("blue")
  end

  it 'has a manufacturer' do
    expect(tshirt.manufacturer).to eq("champion")
  end

  it 'has a design' do
    expect(tshirt.design).to eq("bookstore logo")
  end

  it 'has a quantity' do
    expect(tshirt.quantity).to eq(10)
  end

  it 'has a condition' do
    expect(tshirt.condition).to eq("new")
  end

  it 'has a price' do
    expect(tshirt.price).to eq(20.00)
  end

  it 'has a cost' do
    expect(tshirt.cost).to eq(5.00)
  end

  it 'has a name' do
    expect(tshirt.name).to eq("tshirt")
  end

end
