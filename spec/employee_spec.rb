require 'rspec'
require_relative '../employee'

describe Employee do
  let(:employee) {Employee.new(1)}

  context "attributes" do

    it "has an id" do
      expect(employee.id).to eq 1
    end

    xit "has a name" do

    end

    xit "has a position" do
      
    end

    xit "has a wage" do

    end

    xit "has an auth_level" do

    end

    xit "has shifts" do

    end
  end
end
