require 'rspec'
require_relative '../bookstore'


describe BookStore do
context "Bookstore attributes" do

  it "has hours"
  it "has books"
  it "has sections"
  it "has employees"
  it "can be open"
  it "has a revenue"
end
context "Bookstore behaviors" do
  it "can hire employees"
  it "can fire employees"
  it "can be opened"
  it "can be closed"
end
context "POS behaviors" do
  it "can make a sale"
  it "can purchase a book for the bookstore"
  it "can give a customer a discount"
  it "can determine whether a customer has a membership"
  it "can process a return"
end
end
