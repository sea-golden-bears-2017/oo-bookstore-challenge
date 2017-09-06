require 'rspec'
require '../bookstore'

describe Bookstore do
	let(:bookstore) { Bookstore.new("The Cozy Corner Bookstore") }

context 'Bookstore' do
	it 'can hire employees' do
		expect(bookstore.hire("Suze")).to eq ["Suze"]
	end

	it 'has readable sections' do
		expect(bookstore.sections).to eq ["Cooking", "Romance", "Fiction"]
	end

	it 'can add new sections' do
		expect(bookstore.add_section("Best Sellers")).to eq ["Cooking", "Romance", "Fiction", "Best Sellers"]
	end

	it 'is open' do
		expect(bookstore.open_store).to eq true
	end

	it 'is closed' do
		expect(bookstore.close_store).to eq false
	end

	it 'returns a float value of daily revenue' do
		expect(bookstore.daily_revenue).to eq 0.0
	end

	it 'returns hours of operation for a given day' do
		expect(bookstore.hours_of_operation("Thursday")).to eq "9am - 9pm"
	end

	it 'returns Sunday hours' do
		expect(bookstore.hours_of_operation("Sunday")).to eq "10:30am - 3pm"
	end
  end	
end