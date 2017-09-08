require_relative '../discountable'
require_relative '../bookstore'

describe Discountable do
  # let!(:bookstore) { BookStore.new }

  describe '#determine_discount' do
    # context 'stuff' do
      it 'determines discount percentage given an object' do
        this_book = "hi"
        expect(determine_discount(this_book)).to eq 1
      end
    # end
  end


end
