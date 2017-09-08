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

  def view_menu
    input = @view.menu
    direct(input)
  end

  def direct(input)
    if input == '1'
      @view.show_all(get_books)
    else
      # code
    end
  end

end
