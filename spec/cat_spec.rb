require 'rspec'
require_relative '../cat'

describe Cat do

  let!(:cat) { Cat.new({title: "Princess", color: "white, blonde and gray", age: 4, breed: "Ragdoll", meow_volume: 2}) }

  context 'Cat attributes' do
    it 'has a title' do
      expect(cat.title).to eq "Princess"
    end
  end
end
