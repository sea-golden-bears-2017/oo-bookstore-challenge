require 'rspec'
require_relative '../employee.rb'

describe Employee do
  let(:employee) { Employee.new({id: 1, full_name: "Anna Jeszeck", position: "Sales Assistant", wage: 15, hours: 40, hire_date: "1-1-2017", fire_date: "1-2-2017", ssn: "123-45-6789", auth_level: "Level 1"}) }

  describe "employee attributes"
    it "has an ID" do
      expect(employee.id).to eq(1)
    end
    it "has a name" do
      expect(employee.full_name).to eq("Anna Jeszeck")
    end
    it "has a position" do
      expect(employee.position).to eq("Sales Assistant")
    end
    it "has a wage" do
      expect(employee.wage).to eq(15)
    end
    it "has hours" do
      expect(employee.hours).to eq(40)
    end
    it "has a hire_date" do
      expect(employee.hire_date).to eq("1-1-2017")
    end
    it "has a fire_date" do
      expect(employee.fire_date).to eq("1-2-2017")
    end
    it "has a SSN" do
      expect(employee.ssn).to eq("123-45-6789")
    end
    it "has an authority level" do
      expect(employee.auth_level).to eq("Level 1")
    end
end
