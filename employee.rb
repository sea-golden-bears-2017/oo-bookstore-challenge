require 'date'

class Employee

  attr_reader :name, :wage, :position, :id, :hours, :hire_date, :term_date, :authority_level, :on_shift, :ssn, :status

  @@employee_count = 0

  def initialize(args)
    @name = args[:name]
    @wage = args[:wage]
    @position = args[:position]
    @id = @@employee_count + 1
    @@employee_count += 1
    @hours = 0
    @hire_date = DateTime.now
    @term_date = nil
    @authority_level = args[:authority_level]
    @on_shift = false
    @ssn = args[:ssn]
    @status = 'active'
  end
end
