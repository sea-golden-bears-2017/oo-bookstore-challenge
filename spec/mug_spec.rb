require 'rspec'
require_relative '../mug'

describe Mug do
  let (:mug_hash) {{color: "red", quantity: 10, price: 15, shelf: "mug shelf", condition: "new", cost: 5, material: "ceramic non-breakable", design: "random literary quote mug"}}
  let (:mug1) { Mug.new(mug_hash) }

  context 'attributes' do
    it 'has a color' do
      expect(mug1.color).to eq "red"
    end

    it 'has a quantity' do
      expect(mug1.quantity).to eq 10
    end

    it 'has a price' do
      expect(mug1.price).to eq 15
    end

    it 'has a shelf' do
      expect(mug1.shelf).to eq "mug shelf"
    end

    it 'has a condition' do
      expect(mug1.condition).to eq "new"
    end

    it 'has a cost' do
      expect(mug1.cost).to eq 5
    end

    it 'has a material' do
      expect(mug1.material).to eq "ceramic non-breakable"
    end

    it 'has a design' do
      expect(mug1.design).to eq "random literary quote mug"
    end
  end
end
