require 'rspec'
require_relative '../employee'

describe 'Employee' do
  let(:employee) {Employee.new({name: "John Smith", id: "1", wage: 15.00, position: "clerk", ssn: "555-33-9999", authorization: "1", hire_date: '2015-01-01', termination_date: '2015-04-01'})}

    it 'has a name' do
      expect(employee.name).to eq ("John Smith")
    end

    it 'has an id' do
     expect(employee.id).to eq("1")
    end

    it 'has a wage' do
      expect(employee.wage).to eq(15.00)
    end

    it 'has a position' do
      expect(employee.position).to eq("clerk")
    end

    it 'has a ssn number' do
    expect(employee.ssn).to eq("555-33-9999")
    end

    it 'has an authorization level' do
    expect(employee.authorization).to eq("1")
  end
    it 'has a hire date' do
    expect(employee.hire_date).to eq('2015-01-01')
  end
    it 'has a termination date' do
    expect(employee.termination_date).to eq('2015-04-01')
  end

end
