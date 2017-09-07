require 'rspec'
require_relative '../cash_register'

describe CashRegister do
  let(:cash_register) { CashRegister.new }
  describe 'attributes' do
    it 'has a till' do
      expect(cash_register.till).to eq(0)
    end

    it 'has transactions' do
      expect(cash_register.transactions).to eq([])
    end
  end

  describe 'methods' do
    xit '#sell' do
    end

    xit '#buy' do
    end

    xit '#transaction' do
    end

    xit '#return' do
    end

    xit '#membership' do
    end

    xit '#cash_drop' do
    end

    xit '#discount' do
    end
  end
end
