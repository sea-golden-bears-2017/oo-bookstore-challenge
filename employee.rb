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
    @hours = 40
    @hire_date = DateTime.now
    @term_date = nil
    @authority_level = args[:authority_level]
    @on_shift = false
    @ssn = args[:ssn]
    @status = 'active'
  end

  def on_shift_toggle
    @on_shift = !@on_shift
  end

  def print_employee_info
    puts <<-INFO
      Name is #{@name}
      Wage is $#{@wage}/hr
      Position is #{@position}
      Scheduled to work #{@hours} hours this week
      Hired on #{hire_date.strftime('%m-%d-%Y')}
      Employee is currently at work: #{@on_shift}
      Employee status is #{@status}
    INFO
  end
end
