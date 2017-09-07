require 'rspec'
require_relative '../transaction'

describe Transaction do
  let (:sale) { Transaction.new({id: 2, items: ["Harry Potter", "The Three Musketeers"],
                  revenue: 30.0, employee_id: 1, cash: 40.0, change: 10.0}) }

  it "has an id" do
    expect(sale.id).to eq(2)
  end

  it "has items" do
    expect(sale.items).to eq(["Harry Potter", "The Three Musketeers"])
  end

  it "has revenue" do
    expect(sale.revenue).to eq(30.0)
  end

  it "has an employee id" do
    expect(sale.employee_id).to eq(1)
  end

  it "has cash" do
    expect(sale.cash).to eq(40.0)
  end

  it "has change" do
    expect(sale.change).to eq(10.0)
  end
end
