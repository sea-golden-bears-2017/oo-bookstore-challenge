require 'rspec'
require_relative '../inventory'

describe 'Inventory' do 
    let (:args) {{books: 500, tshirts: 200, coffee: 25}}
    let (:inventory) {Inventory.new(args)}

    it 'decreases product count when there is a sale' do 
        expect(inventory.update_inventory(93, 1)).to eq (499)
    end 
    it 'increases product count when there is a return' do 
        expect(inventory.update_inventory(1200, 1)).to eq (201)
    end
    it 'increases product count when a used item is purchased' do
    expect(inventory.inventory_update(1200, 1)).to eq (201)
    end

end
