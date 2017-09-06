require 'rspec'
require_relative '../bookstore'


describe BookStore do

  let(:bookstore) {BookStore.new('Jelizas YA Fixion')}


context "Bookstore attributes" do

  it "has hours" do
      expect(bookstore.hours).to eq [9,5]
  end

  it "has books" do
    expect(bookstore.books).to be_an(Array)
  end

  it "has sections" do
    expect(bookstore.sections).to eq ["front", 'back', 'downstairs', 'upstairs', 'Young Adult Fiction']
  end

  it "has employees" do
    expect(bookstore.employees).to be_an(Array)
  end

  it "can be open" do
    expect(bookstore.is_open).to satisfy {|is_open| is_open == true || is_open == false}
  end

  it "has a revenue" do
    expect(bookstore.revenue).to be_a(Float)
  end

end
context "Bookstore behaviors" do
  it "can hire employees" do
    expect(bookstore.hire_employee({})).to eq "Connect me to Employee class"
  end
  it "can fire employees" do
    expect(bookstore.fire(1)).to eq bookstore.employees
  end
  it "can be opened" do
    bookstore.open_store
    expect(bookstore.is_open).to eq true
  end
  it "can be closed" do
    bookstore.close_store
    expect(bookstore.is_open).to eq false
  end
end
context "POS behaviors" do
  it "can make a sale"
  it "can purchase a book for the bookstore"
  it "can give a customer a discount"
  it "can determine whether a customer has a membership"
  it "can process a return"
end
end
