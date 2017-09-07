require 'rspec'
require_relative '../bookstore'
require_relative '../book'

describe BookStore do
  let(:book_1) {Book.new({id: '1', title: "The Yellow Meads of Asphodel", author: 'Miss Gerardo Harber', genre: 'Mythopoeia', price: 10.37, count: 24, isbn: '0-278-814673-6'})}
  let(:book_2) {Book.new({ id: '2', title: "As I Lay Dying", author: 'Simeon Daniel', genre: 'Mystery', price: 51.17, count: 15, isbn: '0-466-611824-7' })}
  let(:books_array) {[book_1, book_2]}
  let(:args) {{books: books_array, hours: 3, employees: ['Marrey Jones', 'Jim Bob'], sections: 3, revenue: 3} }
  let(:bookstore) { BookStore.new(args) }
  let(:empty_bookstore) { BookStore.new({books: [], hours: 3, employees: 3, sections: 3, revenue: 3}) }


  describe '#has_books?' do
    it 'returns false if the inventory is empty' do
      expect(empty_bookstore.has_books?).to be false
    end

    it 'returns true when the inventory has items in it' do
      expect(bookstore.has_books?).to be true
    end
  end

  describe "#hire" do
    let(:employee){'John Smith'}
    it "adds an employee to employees" do
      bookstore.hire(employee)
      expect(bookstore.employees.length).to eq 3
    end
  end

  describe "#fire" do
    let(:fired_employee){'Marrey Jones'}
    it "removes an employee from employees" do
      bookstore.fire(fired_employee)
      expect(bookstore.employees.length).to eq 1
    end
  end

  describe '#open?' do
      it 'bookstore to be open' do
       expect(bookstore.open?).to be true
    end
  end

end
