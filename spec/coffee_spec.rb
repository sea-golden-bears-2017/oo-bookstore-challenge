require 'rspec'
require_relative '../coffee'

describe "Coffee" do
  let(:args) {{weight: "12 oz", roast: "light", ground: true, decaf: false}}
  let(:coffee) {Coffee.new(args)}

  it 'has a weight' do
    expect(coffee.weight).to eq("12 oz")
  end

  it 'has a roast' do
    expect(coffee.roast).to eq("light")
  end

  it 'is or is not ground' do
    expect(coffee.ground).to eq(true)
  end

  it 'is or is not decaf' do
    expect(coffee.decaf).to eq(false)
  end

end
