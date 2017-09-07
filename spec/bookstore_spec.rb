require 'rspec'
require_relative '../bookstore'
require_relative '../book'
require_relative '../employee'

describe BookStore do
  let(:book_1) {Book.new({id: '1', title: "The Yellow Meads of Asphodel", author: 'Miss Gerardo Harber', genre: 'Mythopoeia', price: 10.37, count: 24, isbn: '0-278-814673-6'})}

  let(:book_2) {Book.new({ id: '2', title: "As I Lay Dying", author: 'Simeon Daniel', genre: 'Mystery', price: 51.17, count: 15, isbn: '0-466-611824-7' })}
  let(:books_array) {[book_1, book_2]}

  let(:employee_1) { Employee.new({name: 'Jerry Smith', id: '001', wage: 18, position: 'Cashier', ssn: '123-45-6789', authorization: '1', hire_date: '01-01-2017', termination_date: nil}) }

  let(:employee_2) { Employee.new({name: 'Jane Doe', id: '002', wage: 18, position: 'Manager', ssn: '123-47-1234', authorization: '2', hire_date: '01-01-2017', termination_date: nil}) }

  let(:store_info) {{books: books_array, hours: 3, employees: [employee_1], sections: 3, revenue: 3} }

  let(:bookstore) { BookStore.new(store_info) }

  let(:empty_bookstore) { BookStore.new({books: [], hours: 3, employees: [], sections: 3, revenue: 3}) }


  describe '#has_books?' do
    it 'returns false if the inventory is empty' do
      expect(empty_bookstore.has_books?).to be false
    end

    it 'returns true when the inventory has items in it' do
      expect(bookstore.has_books?).to be true
    end
  end

  describe "#hire" do
    it "adds an employee to employees" do
      bookstore.hire(employee_2)
      expect(bookstore.employees).to include(employee_2)
    end
  end

  describe "#fire" do
    it "removes an employee from employees" do
      bookstore.fire(employee_1)
      expect(bookstore.employees).to_not include(employee_1)
    end
  end
end
