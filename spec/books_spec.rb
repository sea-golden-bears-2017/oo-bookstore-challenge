require_relative '../book'

describe 'Book class' do
  let(:book) { Book.new("POODR") }

  it 'has a title' do
    expect(book.title).to eq "POODR"
  end

  it 'has an author' do
  end

  it 'has an isbn' do
  end

  it 'has a price' do
  end

  it 'has a genre' do
  end

  it 'has a publisher' do
  end

  it 'has a quantity' do
  end

  it 'has a cost' do
  end

  it 'has a condition' do
  end

end
