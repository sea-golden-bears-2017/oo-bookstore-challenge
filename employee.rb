class Employee
  attr_reader :name, :id, :wage

  def initialize(args)
    @name = args[:name]
    @id = args[:id]
    @wage = args[:wage]
    @position = args[:position]
    @ssn = args[:ssn]
    @authorization = args[:authorization]
    @hire_date = args[:hire_date]
    @termination_date = args[:termination_date]
  end
end
