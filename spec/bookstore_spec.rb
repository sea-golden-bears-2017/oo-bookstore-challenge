require_relative '../bookstore'
require_relative '../book'

describe BookStore do

  let(:bookstore) { BookStore.new }

  it "purchases books and adds them to the inventory" do
    bookstore.purchase('invoice.csv')
    expect(bookstore.books.length).to_not be 0
  end

  # it "has some employees" do
  #   expect(bookstore.employees.length).to_not be 0
  # end

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


end
