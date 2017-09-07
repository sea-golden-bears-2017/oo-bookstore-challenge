class Employee
	@@id = 0
  attr_reader :id, :name, :ssn_tax_id, :hire_date, :wage, :position, :on_the_clock, :employed

  def initialize(name, ssn_tax_id, hire_date)
    @id = @@id
    @name = name
    @ssn_tax_id = ssn_tax_id
    @hire_date = hire_date
    @@id += 1
    #Wage is 15 dollars an hour
    @wage = 15
    @position = 'new hire'
    @on_the_clock = false
    @employed = true
  end

  def negotiate(hourly)
  	# Hourly is new wage negotiated
  	@wage = hourly
  end

  def promotion(new_title)
  	@position = new_title
  end

  def arriving_work
  	@on_the_clock = true
  end

  def terminate
  	@employed = false
  end

end

# @name
# @wage
# @position
# @id
# @hours
# @ssn_tax_id
# @hire_date
# @authorization_level
# @termination_date
# @on_shift
# @shifts
