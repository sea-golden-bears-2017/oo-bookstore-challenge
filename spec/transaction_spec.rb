require 'rspec'
require_relative '../transaction'

describe "Transaction" do
  let(:first_transaction) {Transaction.new(book, employee)}
  let(:second_transaction) {Transaction.new(book, employee)}
  let(:employee) { Employee.new("Amanuel", 555555555, 9052017)}
  let(:book) { Book.new({title: "Harry Potter and the Philosopher's Stone",
                         author: "J.K. Rowling",
                         price: 12.50,
                         genre: "Fiction",
                         quantity: 4,
                         isbn: 9788700631625,
                         condition: "New",
                         publisher: "Scholastic",
                         book_format: "Hard Cover",
                         cost: 7.17})}

  context "Each Transaction" do
    it 'ID counter starts at 0' do
      expect(Transaction.id_counter).to eq 0
    end

    it 'Has an ID' do
      expect(first_transaction.id).to eq 0
    end

    xit 'Transaction ID increments every transaction' do
      expect(second_transaction.id).to eq 1
    end

    it 'test book title return correct value' do
      expect(first_transaction.item_title).to eq "Harry Potter and the Philosopher's Stone"
    end

    it 'test employee name return correct value' do
      expect(second_transaction.employee_name).to eq "Amanuel"
    end

    it 'test revenue to return item price' do
      expect(second_transaction.revenue).to eq 12.50
    end
  end
end
