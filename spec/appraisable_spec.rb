require 'rspec'
require_relative '../appraisable'
require_relative '../mug'
require_relative '../book'

describe Appraisable do

  let(:book_hash) {{:id => "1",
    :title => "After Many a Summer Dies the Swan",
    :author => "Mustafa Mayer MD", :genre => "Fairy tale",
    :price => "83.42", :quantity=> "17", :isbn => "0-194-607033-0"}}
  let(:book1) { Book.new(book_hash) }
  let(:mug1) { Mug.new({ color: "blue" }) }

  describe '#reject?' do
    it 'returns true or false' do
      expect(book1.reject?).to be(true).or be(false)
    end
  end
  describe '#appraise' do

    it 'returns an integer between 5 and 30' do
      expect(book1.appraise).to be_within(12.5).of(17.5)
    end

    it 'returns an integer between 5 and 30' do
      expect(mug1.appraise).to be_within(12.5).of(17.5)
    end

  end
end
