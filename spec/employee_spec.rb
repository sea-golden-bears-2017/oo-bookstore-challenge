require 'rspec'
require_relative '../employee.rb'

describe Employee do

  let(:employee_args) { {name: "Unicode the Duck", wage: 15, position: "CEO", authority_level: 10, ssn: '111-11-1111'} }

  let(:employee) { Employee.new(employee_args) }

  it 'has a name' do
    expect(employee.name).to eq "Unicode the Duck"
  end

  it 'has a wage' do
    expect(employee.wage).to eq 15
  end

  it 'has a position' do
    expect(employee.position).to eq "CEO"
  end

  it 'has an id' do
    expect(employee.id).to eq 4
  end

  it 'has hours' do
    expect(employee.hours).to eq 40
  end

  it 'has hire date' do
    expect(employee.hire_date.strftime('%m-%d-%Y')).to eq "09-05-2017"
  end

  it 'has termination date' do
    expect(employee.term_date).to eq nil
  end

  it 'has authority level' do
    expect(employee.authority_level).to eq 10
  end

  it 'has on-shift status' do
    expect(employee.on_shift).to eq false
  end

  it "changes on_shift status when toggled" do
    employee.on_shift_toggle
    expect(employee.on_shift).to eq true
  end

  it 'has ssn/tax id' do
    expect(employee.ssn).to eq "111-11-1111"
  end

  it 'has an employment status' do
    expect(employee.status).to eq "active"
  end

  it "prints employee info" do
    employee.print_employee_info
  end

end
