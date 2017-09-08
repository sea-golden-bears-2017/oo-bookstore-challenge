require 'rspec'
require_relative '../book'
require_relative '../appraise'

describe 'Book' do
  let(:book) {Book.new({
    id: '1',
    title: "The Yellow Meads of Asphodel",
    author: 'Miss Gerardo Harber',
    genre: 'Mythopoeia',
    price: 10,
    count: 24,
    isbn: '0-278-814673-6',
    })}

  it 'has an id' do
    expect(book.id).to eq("1")
  end

  it 'has a title' do
    expect(book.title).to eq("The Yellow Meads of Asphodel")
  end

  it 'has an author' do
    expect(book.author).to eq("Miss Gerardo Harber")
  end

  it 'has a genre' do
    expect(book.genre).to eq("Mythopoeia")
  end

  it 'has a price' do
    expect(book.price).to eq(10)
  end

  it 'has quantity' do
    expect(book.count).to eq(24)
  end

  it 'has an isbn' do
    expect(book.isbn).to eq("0-278-814673-6")
  end

  describe "#set_discount_price" do
    context 'raises an error if' do
      it 'condition is new' do
        expect{ book.set_discount_price(book.condition, book.price) }.to raise_error(Appraisable::InvalidCondition)
      end

      it 'condition is bad' do
        book.condition = 'bad'

        expect{ book.set_discount_price(book.condition, book.price) }.to raise_error(Appraisable::InvalidCondition)
      end
    end
    context 'it updates the price attribute' do
      it 'to 5 if condition is okay' do
        book.condition = 'okay'
        book.set_discount_price(book.condition, book.price)

        expect(book.price).to eq 5
      end

      it 'to 7.5 if condition is good' do
        book.condition = 'good'
        book.set_discount_price(book.condition, book.price)

        expect(book.price).to eq 7.5
      end
    end
  end

end
