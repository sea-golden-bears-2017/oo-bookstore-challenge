require 'rspec'
require_relative '../teddy_bear'

describe TeddyBear do
  let (:teddy_bear) {TeddyBear.new({color: "Brown", fuzziness: true,
                                    price: 7.0, quantity: 4, cost: 5.0})}

  it "has a color" do
    expect(teddy_bear.color).to eq("Brown")
  end
  it "has a fuzziness value" do
    expect(teddy_bear.fuzziness).to be true
  end
  it "has a price" do
    expect(teddy_bear.price).to eq(7.0)
  end
  it "has a quantity" do
    expect(teddy_bear.quantity).to eq(4)
  end
  it "has a cost" do
    expect(teddy_bear.cost).to eq(5.0)
  end
end
