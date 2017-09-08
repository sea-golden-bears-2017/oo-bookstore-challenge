require 'rspec'
require_relative '../transaction'
require_relative '../cash_register'
require_relative "../book"
require_relative '../employee'

describe CashRegister do
  let(:register) { CashRegister.new }

  context "attributes" do
    it 'has transactions' do
      expect(register.transactions).to eq []
    end

    it 'has a till' do
      expect(register.till).to be_an_instance_of Hash
    end
  end

  describe "#sell" do
    let(:book_hash) {{:id => "1",
      :title => "After Many a Summer Dies the Swan",
      :author => "Mustafa Mayer MD", :genre => "Fairy tale",
      :price => "83.42", :quantity=> "17", :isbn => "0-194-607033-0"}}
    let(:book) { Book.new(book_hash) }
    let(:employee) { Employee.new({id: 1, name: "Frank"}) }

    it "changes quantity of product" do
      expect{ register.sell([book], employee) }.to change { book.quantity }.from(17).to(16)
    end
  end

end
