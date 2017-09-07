require 'rspec'
require_relative '../employee'


describe Employee do

let(:brooke) { Employee.new("Brooke", 555555555, 9052017)}
let(:book_store) { BookStore.new({hours: "10 AM - 10 PM",
                           sections: {"Fiction" => [],
                                     "Non-Fiction" => []}})}

	it 'When onboarding take their legal name, identication number and their hire date and give them 15 hour wage' do
		expect(brooke.name).to eq("Brooke")
		expect(brooke.ssn_tax_id).to eq(555555555)
		expect(brooke.hire_date).to eq(9052017)
		expect(brooke.wage).to eq(15)
		expect(brooke.position).to eq('new hire')
	end

	it 'Brooke shows up to work,  and gets a new wage and then quits at the end of the day' do
		brooke.arriving_work
		expect(brooke.on_the_clock).to eq(true)
	end

	it 'gets promoted' do
		brooke.promotion("Manager")
		expect(brooke.position).to eq("Manager")
	end
	
	it 'she gets a new wage' do
		brooke.negotiate(17)
		expect(brooke.wage).to eq(17)
	end

end
