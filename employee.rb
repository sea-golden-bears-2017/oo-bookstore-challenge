class Employee

  attr_reader :id, :name
  attr_accessor :position, :wage, :auth_level, :hours

  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @position = data[:position]
    @wage = data[:wage]
    @auth_level = data[:auth_level]
    @hours = data[:hours]
  end



end
