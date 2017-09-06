class Bookstore
	
	attr_reader :staff, :daily_revenue
	attr_accessor :sections

	def initialize(name)
		@staff         = []
		@daily_revenue = 0.0
		@is_open       = true
		@sections      = ["Cooking", "Romance", "Fiction"]
		@hours         = { 
						   :M => "9am - 9pm", 
						   :T => "10am -7pm", 
						   :W => "9am - 9pm", 
						   :Th => "9am - 9pm", 
						   :F => "9am - 9pm", 
						   :S => "10am - 7pm", 
						   :Sun => "10:30am - 3pm"
						}
	end

	def hire(employee)
		@staff << employee
	end

	def add_section(new_section)
		@sections << new_section
	end

	def open_store
		@is_open == true
	end

	def close_store
		@is_open == false
	end

	def hours_of_operation(day)
		if day == "Monday" || day == "Wednesday" || day == "Thursday" || day == "Friday"
			return "9am - 9pm"
		elsif 
			day == "Tuesday" || day == "Saturday"
			return "10am - 7pm"
		else
			day == "Sunday"
			return "10:30am - 3pm"
		end
	end
end