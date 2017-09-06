require 'csv'
require_relative 'book'

class BookStore

  attr_reader :books, :open

  def initialize
    @books = []
    @employees = []
    @open = false
  end

  def purchase(filename)
    CSV.foreach(filename, headers: true, header_converters: :symbol) do |row|
      attribute_hash = row.to_h
      @books << Book.new(attribute_hash)
    end
  end

  def toggle_open_status
    @open = !@open
  end
end
