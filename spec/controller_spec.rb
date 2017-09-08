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
  describe '.get_books' do
    it 'sends books collection to the view class' do
      p controller
      # controller.model.all
    end
  end
end
