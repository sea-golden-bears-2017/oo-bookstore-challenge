require 'rspec'
require_relative '../book'


describe Book do
    let(:book) { Book.new({
        id: 7, 
        title: "Terror in the Darkness",  
        author: "Barb Sapphire", 
        genre: "Horror", 
        price: 44.10, 
        count: 33, 
        isbn: 1-222-132433-2 
        })
        }

context 'Book Information' do
    it 'has an id' do
        expect(book.id).to eq 7
    end
    
    it 'has a title' do
        expect(book.title).to eq "Terror in the Darkness"
    end
    
    it 'has an author' do
        expect(book.author).to eq "Barb Sapphire"
    end
    
    it 'has a genre' do
        expect(book.genre).to eq "Horror"
    end
    
    it 'has a price' do
        expect(book.price).to eq 44.10
    end
    
    it 'has a count' do
        expect(book.count).to eq 33
    end
    
    it 'has an isbn' do 
        expect(book.isbn).to eq 1-222-132433-2
    end

end