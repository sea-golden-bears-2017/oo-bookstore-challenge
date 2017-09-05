require 'faker'
require 'csv'

CSV.open("invoice.csv", "wb") do |csv|
  csv << ['id', 'title', 'author', 'genre', 'price', 'count', 'isbn']
end
