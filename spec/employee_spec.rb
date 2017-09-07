require 'rspec'
require_relative '../employee'

describe 'Employee' do
  let(:employee) { Employee.new({name: 'Jerry Smith', id: '001', wage: 18, position: 'Cashier', ssn: '123-45-6789', authorization: '1', hire_date: '01-01-2017', termination_date: nil}) }

  it 'has a name' do
    expect(employee.name).to eq 'Jerry Smith'
  end

  it 'has an id' do
    expect(employee.id).to eq '001'
  end

  it 'has a wage' do
    expect(employee.wage).to eq 18
  end
  
  it 'has a position'
  it 'has a ssn number'
  it 'has an authorization level'
  it 'has a hire date'
  it 'has a termination date'
end
