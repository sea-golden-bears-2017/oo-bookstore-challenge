require_relative 'model'
require_relative 'view'

class RoboLibrarian
  attr_reader :book, :view
  def initialize(book, view)
    @book = book
    @view = view
  end

  def get_books
    @book.all
  end
end
