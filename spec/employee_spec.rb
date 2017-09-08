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

  it 'has a position' do
    expect(employee.position).to eq 'Cashier'
  end

  it 'has a ssn number' do
    expect(employee.ssn).to eq '123-45-6789'
  end

  it 'has an authorization level' do
    expect(employee.authorization).to eq '1'
  end

  it 'has a hire date' do
    expect(employee.hire_date).to eq '01-01-2017'
  end

  it 'returns nil if employee has not been teerminated' do
    expect(employee.termination_date).to be nil
  end
end
