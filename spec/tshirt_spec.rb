require_relative '../tshirt.rb'
require 'rspec'

describe Tshirt do
  let(:tshirt) {Tshirt.new({
    size: 'S',
    cost: 12.50,
    price: 15.50,
    quantity: 4
    })}

  let(:bad_tshirt) {Tshirt.new({
    size: 'S',
    cost: 17.50,
    price: 15.50,
    quantity: 4
    })}

  it 'has a size' do
    expect(tshirt.size).to eq('S')
  end
  it 'has a cost' do
    expect(tshirt.cost).to eq 12.50
  end
  it 'has a price' do
    expect(tshirt.price).to eq 15.50
  end
  it 'has a quantity' do
    expect(tshirt.quantity).to eq 4
  end
  it 'can be appraised' do
    expect(tshirt.appraise).to eq(tshirt.cost)
  end
  it 'can be rejected' do
    expect(bad_tshirt.reject?).to be false
  end

end