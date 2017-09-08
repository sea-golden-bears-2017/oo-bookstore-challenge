require 'rspec'
require_relative '../transaction'

describe Transaction do
  let(:transaction1) { Transaction.new }
  context 'attributes' do
    xit 'has an id' do
      expect(transaction1.id).to eq 1
    end
    it 'has an array of items'
    it 'has a charge'
    it 'has an employee id'
    it 'has a cash variable'
    it 'has a change variable'
  end

end
