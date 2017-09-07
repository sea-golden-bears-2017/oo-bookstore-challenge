require_relative '../cash_register.rb'

describe CashRegister do
  context 'Attribute tests' do
    let(:register) { CashRegister.new }

    it 'has transactions' do
      expect(register.transactions).to eq []
    end

    it 'has a till' do
      expect(register.till).to eq ({twenty: 5, ten: 10, five: 20, one: 100})
    end

  end
end
