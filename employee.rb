class Employee
  attr_reader :id, :full_name, :position, :wage, :hours, :hire_date, :fire_date,:ssn, :auth_level

  def initialize(hash)
    @id = hash[:id]
    @full_name = hash[:full_name]
    @position = hash[:position]
    @wage = hash[:wage]
    @hours = hash[:hours]
    @hire_date = hash[:hire_date]
    @fire_date = hash[:fire_date]
    @ssn = hash[:ssn]
    @auth_level = hash[:auth_level]
  end
end

# def self.ssn
#   book_no = "0-"
#   book_no << Faker::Number.number(3)
#   book_no << '-'
#   book_no << Faker::Number.number(2)
#   book_no << '-'
#   book_no << Faker::Number.number(4)
# end
