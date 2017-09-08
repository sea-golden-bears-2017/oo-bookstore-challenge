
class View
  def self.show_all(books)
    books.each { |book| puts "#{book.title} #{book.id}"}
  end

  def self.menu
    puts 'Welcome to the Library of Ham'
    puts 'Please make a selection:'
    puts '1) list all books'
    puts '2) find a book'
    gets.chomp!
  end
end
