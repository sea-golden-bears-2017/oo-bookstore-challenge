require 'rspec'
require_relative '../coffee'

describe Coffee do
  let(:coffee) { Coffee.new({id: '0045', price: 10, count: 20, roast: 'dark'}) }
  context 'attributes' do
    it 'has an id' do
      expect(coffee.id).to eq '0045'
    end

    it 'has a price' do
      expect(coffee.price).to eq 10
    end
    it 'has a count' do
      expect(coffee.count).to eq 20
    end

    it 'it has a roast' do
      expect(coffee.roast).to eq 'dark'
    end
    
  end
end
