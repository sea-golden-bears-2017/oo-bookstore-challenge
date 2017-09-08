require 'rspec'
require_relative '../tshirt'

describe Tshirt do
  let(:shirt) { Tshirt.new({id: '00798', price: 25, count: 30, size: 'medium'}) }
  let(:other_shirt) { Tshirt.new({id: '00798', price: 25, count: 30, size: 'medium'}, condition = 'bad') }

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
      context "returns true" do
        it 'if condition is bad' do
          expect(other_shirt.reject?(other_shirt.condition)).to be true
        end
        it 'if condition is new' do
          expect(shirt.reject?(shirt.condition)).to be true
        end
      end
      it 'returns false if condition is good' do
        other_shirt.condition = 'good'
        expect(other_shirt.reject?(other_shirt.condition)).to be false
      end
    end

    describe "#appraise" do
      context "raises an error" do
        let(:condition){other_shirt.condition}
        let(:price){other_shirt.price}
        let(:condition_2){shirt.condition}
        let(:price_2){shirt.price}

        it "when condition is 'bad'" do
          expect{other_shirt.appraise(condition, price)}.to raise_error(Tshirt::InvalidCondition)
        end
        it "when condition is 'new'" do
          expect{shirt.appraise(condition_2, price_2)}.to raise_error(Tshirt::InvalidCondition)
        end
      end
      context "returns the discounted price based on the condition of the product" do
        let(:condition){other_shirt.condition}
        let(:price){other_shirt.price}

        it "returns 17.5 if condition is 'good'" do
          other_shirt.condition = 'good'
          expect(other_shirt.appraise(condition, price)).to eq 18.75
        end
        it "returns 12.5 if condition is 'okay'"do
          other_shirt.condition = 'okay'
          expect(other_shirt.appraise(condition, price)).to eq 12.5
        end

      end
    end

    describe '#find_discount' do
      it 'returns 0.25 if condition is good' do
        other_shirt.condition = 'good'
        expect(other_shirt.find_discount(other_shirt.condition)).to eq 0.25
      end
      it 'returns 0.5 if condition is okay' do
        other_shirt.condition = 'okay'
        expect(other_shirt.find_discount(other_shirt.condition)).to eq 0.5
      end
    end

    describe "#set_discount_price" do
      it 'update the price attribute' do
        other_shirt.condition = 'okay'
        other_shirt.set_discount_price(other_shirt.condition, other_shirt.price)
        expect(other_shirt.price).to eq 12.5
      end

    end
  end
end
