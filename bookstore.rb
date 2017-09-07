require 'csv'
require_relative 'book.rb'

class BookStore
 attr_reader :closed, :store_hours
 attr_accessor :books_array

  def initialize
    @books_array = []
    @closed = true
    @store_hours = {
      monday: "8am - 5pm",
      tuesday: "8am - 4pm",
      wednesday: "8am - 5pm",
      thursday: "8am - 5pm",
      friday: "8am - 5pm"
    }
    @revenue = 0
  end

  def close
    @closed = true
  end

  def opens
    @closed = false
  end

  def hours(day)
    sym = day.to_sym
    @store_hours[sym]
  end

  def purchase(file_name)
    CSV.foreach(file_name, :headers => true) do |row|
      hash_row = row.to_h
      book = Book.new(hash_row)
      @books_array << book
    end
  end

end
