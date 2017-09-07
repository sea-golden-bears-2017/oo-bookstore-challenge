require 'rspec'
require_relative '../employee.rb'
require 'faker'

describe Employee do
  let(:employee) { Employee.new({id: 1, full_name: Faker::TwinPeaks.character, position: Faker::Job.title, wage: Faker::Number.decimal(2), hours: Faker::Number.number(2), hire_date: Date.today, fire_date: Faker::Date.forward(200), ssn: '345-27-8765', auth_level: "Level #{Random.rand(10)}"}) }

  describe "employee attributes"
    it "has an ID" do
      expect(employee.id).to eq(1)
    end
    it "has a name" do
      expect(employee.full_name).to eq(employee.full_name)
    end
    it "has a position" do
      expect(employee.position).to eq(employee.position)
    end
    it "has a wage" do
      expect(employee.wage).to eq(employee.wage)
    end
    it "has hours" do
      expect(employee.hours).to eq(employee.hours)
    end
    it "has a hire_date" do
      expect(employee.hire_date).to eq(employee.hire_date)
    end
    it "has a fire_date" do
      expect(employee.fire_date).to eq(employee.fire_date)
    end
    it "has a SSN" do
      expect(employee.ssn).to eq(employee.ssn)
    end
    it "has an authority level" do
      expect(employee.auth_level).to eq(employee.auth_level)
    end
end
