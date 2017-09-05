require 'faker'
require 'csv'

CSV.open("invoice.csv", "wb") do |csv|
  csv << ['id', 'title', 'author', 'genre', 'price', 'count', 'isbn']
  i = 1
  100.times do
    csv << [i, Faker::Book.title, Faker::Name.name, Faker::Book.genre, Faker::Commerce.price, (rand * 10).floor ]
    i += 1
  end
end
