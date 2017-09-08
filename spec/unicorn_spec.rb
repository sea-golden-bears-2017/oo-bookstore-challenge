require 'rspec'
require_relative '../unicorn'

describe Unicorn do
  let(:unicorn) { Unicorn.new({title: "Admiral", name: "Bernadette", horn_length: 30, can_fly: true, glitter_production_capacity: 500}) }

end
