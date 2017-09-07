require 'rspec'
require_relative '../appraisable'
require_relative '../product'

describe Appraisable do
  let(:product) {Product.new({
    price: 4.50,
    cost: 3.50,
    quantity: 5
    })}

    let(:product_crap) {Product.new({
      price: 4.50,
      cost: 5.50,
      quantity: 5
      })}
  describe '#appraise' do
    it 'returns the cost of an item' do
      expect(Appraisable::appraise(product)).to eq(product.cost)
    end
  end

  describe "#reject?" do
    context "price is less than the cost" do
      it 'returns true' do
        expect(Appraisable::reject(product)).to be true
      end
    end

    context "price is greater than cost" do
      it 'returns false' do
        expect(Appraisable::reject(product_crap)).to be false
      end
    end
  end
end
