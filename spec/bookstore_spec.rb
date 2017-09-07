require 'rspec'
require_relative '../book'
require_relative '../bookstore'

class Employee
  attr_reader :id, :name
  def initialize(id, name)
    @id = id
    @name = name
  end
end

describe BookStore do

  let (:book_store) { BookStore.new({hours: "10 AM - 10 PM",
                              sections: {"Fiction" => [],
                                        "Non-Fiction" => []}})}

  it 'lists hours from 10 am to 10pm' do
    expect(book_store.hours).to eq("10 AM - 10 PM")
  end

  it 'has two large sections of fiction and non-fiction' do
    expect(book_store.sections.keys).to eq(["Fiction", "Non-Fiction"])
  end

  it 'has the capacity to check inventory' do
    expect(book_store.books_inventory).to eq({})
  end

  it 'has the capacity to add employees' do
    expect(book_store.employees).to eq({})
  end

  it 'is closed when initialized' do
    expect(book_store.open?).to eq(false)
  end

  it "can open at 10 o'clock" do
    book_store.book_store_open
    expect(book_store.open?).to eq(true)
  end

  it 'revenue starts at 0' do
    expect(book_store.revenue).to eq(0)
  end

  it 'can hire employees' do
    employee = Employee.new(1,"Amanuel")
    book_store.hire(employee)
    expect(book_store.employees.keys).to eq([employee.id])
  end

  it 'can fire employees' do
    employee = Employee.new(1,"Amanuel")
    book_store.hire(employee)
    book_store.fire(employee)
    expect(book_store.employees).to eq({})
  end

  it "has a cash register" do
    expect(book_store.cash_register).to_not eq(nil)
  end

  it "the cash register has a till" do
    expect(book_store.cash_register.till).to eq(200)
  end

  it "cash register demonstrates the same functionality as class" do
    expect {book_store.cash_register.cash_drop(40)}.to_not raise_error
  end
end
