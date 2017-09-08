require 'rspec'
require_relative '../controller'

describe RoboLibrarian do
  let(:book) { Book }
  let(:view) { View }
  let(:controller) { RoboLibrarian.new(book, view)}

  describe 'attributes' do
    it 'has access to the Book class' do
      expect(controller.book).to eq(book)
    end
    it 'has access to the View class' do
      expect(controller.view).to eq(view)
    end
  end
  describe '#get_books' do
    it 'returns the books collection' do
      expect(controller.get_books).to eq(book.all)
    end
  end
  describe '#direct' do
    it 'when given an input of "1" calls the show all method of the view' do
      expect(view).to receive(:show_all).with(controller.get_books)
      controller.direct('1')
    end
  end
end
