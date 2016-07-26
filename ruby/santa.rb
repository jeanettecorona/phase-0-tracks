# Define Class

class Santa

# Write initialize method
	def initialize
		puts "Initialize Santa instance ..."
	end

# Write speak method
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

# Write eat_milk_and_cookies method
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end
		
end

# Check that you're able to initialize a Santa instance and call the methods above
Nick = Santa.new

Nick.speak

Nick.eat_milk_and_cookies("oatmeal")

