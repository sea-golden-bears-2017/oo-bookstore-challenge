require_relative '../product.rb'


describe Product do
  let()
  context "#initialize" do
    it "has a quantity" do
      expect(product.quantity).to eq 1
    end
    it "has a price" do
      expect(product.price).to eq 10.95
    end
    it "has a cost" do
      expect(product.cost).to eq 5.95
    end
  end
end
