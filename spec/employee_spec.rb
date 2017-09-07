require_relative "../employee"
require 'rspec'

describe Employee do
  let (:employee) { Employee.new({id: 1, name: "Sam",
    wage: 15.00, position: "Cashier", hours: "9 - 6",
    tax_id: "123-45-6789", hire_date: "9/7/2017", auth_level: false,
    term_date: "9/7/2017", shift_toggler: false}) }

  it "has an id" do
    expect(employee.id).to eq(1)
  end

  it "has a name" do
    expect(employee.name).to eq("Sam")
  end

  it "has a wage" do
    expect(employee.wage).to eq(15.00)
  end

  it "has a position" do
    expect(employee.position).to eq("Cashier")
  end

  it "has hours" do
    expect(employee.hours).to eq("9 - 6")
  end

  it "has a SSN/Tax-ID" do
    expect(employee.tax_id).to eq("123-45-6789")
  end

  it "has a hire date" do
    expect(employee.hire_date).to eq("9/7/2017")
  end

  it "has an authorization level" do
    expect(employee.auth_level).to eq(false)
  end

  it "has a termination date" do
    expect(employee.term_date).to eq("9/7/2017")
  end

  it "has a shift_toggler" do
    expect(employee.shift_toggler).to eq(false)
  end
end
