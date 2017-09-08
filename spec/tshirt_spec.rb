require 'rspec'
require_relative '../tshirt'

describe Tshirt do
  let(:shirt) { Tshirt.new({id: '00798', price: 25, count: 30, size: 'medium'}) }
  let(:bad_shirt) { Tshirt.new({id: '00798', price: 25, count: 30, size: 'medium'}, condition = 'bad') }
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

    describe '#reject?' do
      it 'returns true if condition is bad' do
        expect(bad_shirt.reject?(bad_shirt.condition)).to be true
      end
      it 'returns true if condition is new' do
        expect(shirt.reject?(shirt.condition)).to be true
      end
      it 'returns false if condition is good' do
        bad_shirt.condition = 'good'
        expect(bad_shirt.reject?(bad_shirt.condition)).to be false
      end
    end

    describe "#appraise" do
      it 'returns the discouted price on the product'
    end
  end
end
