require_relative '../product'

describe Product do
  let(:product) { Product.new({ :id => '1', :count => '1', :price => '19.99', :cost => '3.00' }) }
  describe '#initialize' do
    context 'upon initialization' do

      it 'has an id' do
        expect(product.id).to eq '1'
      end

      it 'has a count' do
        expect(product.count).to eq '1'
      end

      it 'has a price' do
        expect(product.price).to eq '19.99'
      end

      it 'has a cost' do

        expect(product.cost).to eq '3.00'
      end


    end
  end
end
