require_relative '../employee.rb'
require_relative '../bookstore.rb'

describe Employee do
  describe "initialize" do
    let(:our_cool_bookstore) {BookStore.new}
    let(:worker) {Employee.new(id:672358, name:"Jaiash", position:"clerk", wage:10.50, hire_date: "02-17-2017", ssn: 123-45-6789, auth_level: 3)}

    it "has an id" do
      expect(worker.id).to eq 672358
    end

    it "has a name" do
      expect(worker.name).to eq "Jaiash"
    end

    it "has a position" do
      expect(worker.position).to eq "clerk"
    end

    it "has a wage" do
      expect(worker.wage).to be_a Float
      expect(worker.wage).to eq 10.50
    end

    it "has a hire_date" do
      expect(worker.hire_date).to eq "02-17-2017"
    end

    it "has a term_date" do
      expect(worker.term_date).to eq ""
    end

    it "has a ssn" do
      expect(worker.ssn).to eq 123-45-6789
    end

    it "has an auth_level" do
      expect(worker.auth_level).to eq 3
    end

    it "on shift" do
      expect(worker.on_shift).to eq false
    end


  context 'Testing for Employee class from BookStore class' do
    it 'hires an employee' do
      our_cool_bookstore.hire(worker)
      expect(our_cool_bookstore.employees[0]).to be_an_instance_of(Employee)
    end

    it 'terminates an employee' do
      our_cool_bookstore.hire(worker)
      our_cool_bookstore.fire(worker.id)
      expect(worker.term_date).to eq "09/07/2017" 
    end

  end #context end
 end
end #end employee class tests
