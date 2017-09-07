require 'rspec'
require_relative '../employee'

describe Employee do
  let(:employee) {Employee.new({id: 1, name: "Frank"})}

  context "attributes" do

    it "has an id" do
      expect(employee.id).to eq 1
    end

    it "has a name" do
      employee2 = Employee.new({id: 2, name: "Jasmine"})
      expect(employee2.name).to eq "Jasmine"

    end

    it "has a position" do
      employee.position = "book expert"
      expect(employee.position).to eq "book expert"
    end

    it "has a wage" do
      employee.wage = 17
      expect(employee.wage).to eq 17
    end

    xit "has an auth_level" do

    end

    xit "has shifts" do

    end
  end
end
