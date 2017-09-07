require 'faker'
require 'csv'

class InvoiceParser
  def self.write
    CSV.open("invoice.csv", "wb") do |csv|
      csv << ['id', 'title', 'author', 'genre', 'price', 'quantity', 'isbn']
      i = 1
      100.times do
        csv << [i, Faker::Book.title, Faker::Name.name, Faker::Book.genre, Faker::Commerce.price, Faker::Number.between(1, 30), self.isbn ]
        i += 1
      end
    end
  end

  private

  def self.isbn
    book_no = "0-"
    book_no << Faker::Number.number(3)
    book_no << '-'
    book_no << Faker::Number.number(6)
    book_no << '-'
    book_no << Faker::Number.number(1)
  end
end
