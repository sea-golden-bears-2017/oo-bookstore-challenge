require_relative '../bookstore'
require_relative '../book'
require_relative '../store'

describe Store do
  let!(:store) { Store.new({
    books: 'Placeholder',
    hours: '9-6',
    sections: 'Fiction',
    employees: 'Placeholder',
    store_open: true,
    revenue: 326.00,
    }) }

  context "Store Attributes" do
    it 'Store has Hours' do
      # p store.inspect
      expect(store.hours).to eq('9-6')

    end


    it 'Store has Books' do
      expect(store.books).to eq('Placeholder')
    end
    it 'Store has Sections' do
      expect(store.sections).to eq('Fiction')
    end
    it 'Store has Employees' do
      expect(store.employees).to eq('Placeholder')
    end
    it 'Store is Open' do
      expect(store.store_open).to eq true
    end
    it 'Store has Revenue' do
      expect(store.revenue).to eq(326.00)
    end

  end

  context "Store Behaviours" do
    it 'Store can Hire'
    it 'Store can Open'
    it 'Store can Close'
    it 'Store can Terminate'
    it 'Store catches Fire'

  end

end
