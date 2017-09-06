require_relative '../bookstore'

describe BookStore do
  let(:store) { BookStore.new }
  let(:employee) { "will be an instance of employee class" }

  it 'has store hours' do
    expect(store.hours.class).to eq Range
  end

  it 'has books' do
    expect(store.books.class).to eq Array
  end

  # it 'has sections' do
  #   expect(store.sections.class).to eq Array
  # end

  it 'has employees' do
    expect(store.employees.class).to eq Array
  end

  it 'has revenue' do
    expect(store.revenue.class).to eq Fixnum
  end

  it 'has returns true if open?'do
    expect(store.open?).to be false
  end

  it 'can hire employees' do
    store.hire(employee)
    expect(store.employees.length).to eq 1
  end

  it 'can fire employees' do
    store.hire(employee)
    store.fire(employee)
    expect(store.employees).to eq []
  end
end
