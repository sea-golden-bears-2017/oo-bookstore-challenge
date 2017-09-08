

class Transaction
  attr_reader :id
  @@id_counter = 0
  def initialize
    @id = @@id_counter
    @@id_counter += 1
  end

  def self.id_counter
    @@id_counter
  end

end
