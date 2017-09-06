require 'rspec'
require_relative '../employee'


describe Employee do

let(:brooke) { Employee.new("Brooke", 555555555, 9052017)}

	it 'When onboarding take their legal name, identication number and their hire date and give them 15 hour wage' do
		expect(brooke.name).to eq("Brooke")
		expect(brooke.ssn_tax_id).to eq(555555555)
		expect(brooke.hire_date).to eq(9052017)
		expect(brooke.wage).to eq(15)
		expect(brooke.position).to eq('new hire')
	end

	it 'Brooke shows up to work, gets promoted and gets a new wage and then quits at the end of the day' do
		brooke.arriving_work
		expect(brooke.on_the_clock).to eq(true)
		brooke.promotion("Manager")
		expect(brooke.position).to eq("Manager")
		brooke.negotiate(17)
		expect(brooke.wage).to eq(17)
		brooke.terminate(9062017)
		expect(brooke.employeed).to eq(false)
	end
end