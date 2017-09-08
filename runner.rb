require_relative 'controller'
require_relative 'view'
require_relative 'model'

robolib = RoboLibrarian.new(Book, View)

Book.new(title: 'Clap if you love books/ham', id: 1)

robolib.view_menu
