require 'rspec'
require_relative '../cash_register'
require_relative '../transaction'

describe Transaction do
  describe 'attributes' do
    it 'has an id'
    it 'includes items'
    it 'has revenue'
    it 'has employee id'
    it 'records cash given'
    it 'returns change'
  end
end
