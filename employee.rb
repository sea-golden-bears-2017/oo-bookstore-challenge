class Employee
  attr_reader :id, :name, :wage, :position, :hours, :tax_id,
            :hire_date, :auth_level, :term_date, :shift_toggler

  def initialize(options)
    @id = options[:id]
    @name = options[:name]
    @wage = options[:wage]
    @position = options[:position]
    @hours = options[:hours]
    @tax_id = options[:tax_id]
    @hire_date = options[:hire_date]
    @auth_level = options[:auth_level]
    @term_date = options[:term_date]
    @shift_toggler = options[:shift_toggler]
  end
end
