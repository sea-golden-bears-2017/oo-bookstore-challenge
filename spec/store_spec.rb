require_relative '../store'

describe 'Store class' do
  let(:store) { Store.new }

  describe 'initialization' do
    it 'opens at 10' do
    end

    it 'closes at 21' do
    end

    it 'has employees' do
      #test hire function with @employees
    end

    it 'has sections' do
      #test sections
    end

    it 'is open' do
      expect(store.store_open).to be_falsey
    end

    it 'has no employees upon initialization' do
      expect(store.employees).to eq []
    end

    it 'has books upon initialization' do
      expect(store.books).not_to eq []
    end

  end

  describe 'toggle_open' do
    it 'changes store status to open' do
      store.toggle_open
      expect(store.store_open).to be_truthy
    end
  end

  describe 'toggle_close' do
    it 'changes store status to closed' do
      store.toggle_open
      store.toggle_close
      expect(store.store_open).to be_falsey
    end
  end

  describe 'get_books' do
    it 'adds new books to inventory' do
      #add get_books test for adding new books to inventory
    end
  end

end














