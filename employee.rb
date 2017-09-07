class Employee

  attr_reader :id, :name
  attr_accessor :position, :wage

  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @position = data[:position]
    @wage = data[:wage]
  end



end
