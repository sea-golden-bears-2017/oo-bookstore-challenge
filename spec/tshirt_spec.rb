require 'rspec'
require_relative '../tshirt'

describe Tshirt do
  let(:shirt) { Tshirt.new({id: '00798', price: 25, count: 30, size: 'medium'}) }
  context 'attributes' do
    it 'has an id' do
      expect(shirt.id).to eq '00798'
    end

    it 'has a price' do
      expect(shirt.price).to eq 25
    end
    it 'has a count' do
      expect(shirt.count).to eq 30
    end

    it 'it has a size' do
      expect(shirt.size).to eq 'medium'
    end
  end
end
