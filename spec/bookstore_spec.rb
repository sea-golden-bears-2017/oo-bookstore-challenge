require_relative '../bookstore'
require_relative '../book'

describe BookStore do

  let(:bookstore) { BookStore.new }

  it "purchases books and adds them to the inventory" do
    bookstore.purchase("invoice.csv")
    expect(bookstore.books).to all be_instance_of Book
  end

  it "adds an employee to this list when hired" do
    new_employee = bookstore.hire({name: "Suze", wage: 48.20, position: "Book Historian", authority_level: 7, ssn: "999-90-1111"})
    expect(bookstore.employees.include?(new_employee)).to eq true
  end

  it "removes an employee from the list when fired" do
    new_employee = bookstore.hire({name: "Suze", wage: 48.20, position: "Book Historian", authority_level: 7, ssn: "999-90-1111"})
    bookstore.fire(new_employee.id)
    expect(bookstore.employees).to eq []
  end

  # it "it had some shelves" do
  #
  # end

  it "it is open after the open method is called" do
    expect(bookstore.toggle_open_status).to be true
  end

  it "it is closed after the close method is called" do
    bookstore.toggle_open_status
    expect(bookstore.toggle_open_status).to be false
  end

  it "has sections" do
    expect(bookstore.sections).to eq ["fiction", "graphic novels", "magazines"]
  end

  it "can add a section" do
    expect(bookstore.add_section("nonfiction")).to eq ["fiction", "graphic novels", "magazines", "nonfiction"]
  end

  it "has a revenue" do
    expect(bookstore.revenue).to eq 0.0
  end

  it "can add revenue" do
    bookstore.cash_register.current_cash = 400.0
    bookstore.add_revenue
    expect(bookstore.revenue).to eq 150.0
  end

end
