require_relative '../merch.rb'

describe Merch do
  context 'Checking for attributes' do
    let(:merch) { Merch.new(type: "t-shirt", brand: "Nike", size: "M", gender: "uni") }

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

  end
end
