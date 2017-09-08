require 'rspec'
require_relative '../cat'

describe Cat do

  let!(:cat) { Cat.new({title: "Princess", name: "Featherbottom", color: "white, blonde and gray", age: 4, breed: "Ragdoll", meow_volume: 2}) }

  context 'Cat attributes' do
    it 'has a title' do
      expect(cat.title).to eq "Princess"
    end

    it 'has a name' do
      expect(cat.name).to eq "Featherbottom"
    end

    it 'has a color' do
      expect(cat.color).to eq "white, blonde and gray"
    end

    it 'has an age' do
      expect(cat.age).to eq 4
    end

    it 'has a breed' do
      expect(cat.breed).to eq "Ragdoll"
    end

    it 'has a meow volume' do
      expect(cat.meow_volume).to eq 2
    end

    describe 'adoptable' do
      it 'returns the cost of the vet check' do
        expect(cat.vet_check).to be_instance_of Float
      end

    end
  end
end
