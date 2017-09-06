require_relative '../book'

describe 'Book class' do
  let(:book) { Book.new(
    :title => "POODR",
    :author => "Sandi Metz",
    :isbn => "0-321-72133-0",
    :price => "44.99",
    :genre => "Non-Fiction",
    :publisher => "Addison-Wesley",
    :quantity => "10",
    :cost => "22.50",
    :condition => "New") }

  it 'has a title' do
    expect(book.title).to eq "POODR"
  end

  it 'has an author' do
    expect(book.author).to eq "Sandi Metz"
  end

  it 'has an isbn' do
    expect(book.isbn).to eq "0-321-72133-0"
  end

  it 'has a price' do
    expect(book.price).to eq "44.99"
  end

  it 'has a genre' do
    expect(book.genre).to eq "Non-Fiction"
  end

  it 'has a publisher' do
    expect(book.publisher).to eq "Addison-Wesley"
  end

  it 'has a quantity' do
    expect(book.quantity).to eq "10"
  end

  it 'has a cost' do
    expect(book.cost).to eq "22.50"
  end

  it 'has a condition' do
    expect(book.condition).to eq "New"
  end

end
