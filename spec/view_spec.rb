require 'rspec'
require_relative '../view'
require 'stringio'

def capture
  $stdin.gets.chomp!
end

describe View do
  let(:book) {Book.new(id: 1, title: 'Ham')}
  describe '#menu' do
    it 'stores the user input' do
      $stdin = StringIO.new("1\n")
      expect(capture).to eq('1')
    end
  end
  describe '.show_all' do
    it 'outputs a list of books to stdout' do
      expect{View.show_all([book])}.to output{"Ham 1\n"}.to_stdout
    end
  end
end
