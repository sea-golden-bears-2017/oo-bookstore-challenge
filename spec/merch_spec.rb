require_relative '../merch.rb'

describe Merch do
  context 'Checking for attributes' do
    let(:merch) { Merch.new(type: "t-shirt", brand: "Nike", size: "M", gender: "uni", quantity: 5, price: 11.75, cost: 5.50) }

    it 'has a type' do
      expect(merch.type).to eq 't-shirt'
    end

    it 'has a brand' do
      expect(merch.brand).to eq 'Nike'
    end

    it 'has a size' do
      expect(merch.size).to eq 'M'
    end

    it 'has a gender' do
      expect(merch.gender).to eq 'uni'
    end
  context 'attributes inherited from Product class'
    it 'has a quantity' do
      expect(merch.quantity).to eq 5
    end

    it 'has a price' do
      expect(merch.price).to eq 11.75
    end

    it 'has a cost' do
      expect(merch.cost).to eq 5.50
    end
  end

end
