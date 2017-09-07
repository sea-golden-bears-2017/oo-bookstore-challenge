class Employee
  def initialize(emp_data)
    @id = emp_data[:id]
    @name = emp_data[:name]
    @position = emp_data[:position]
    @wage = emp_data[:wage]
    @hire_date = emp_data[:hire_date]
    @term_date = ""
    @ssn = emp_data[:ssn]
    @auth_level = emp_data[:auth_level]
    @on_shift = false
  end
end
