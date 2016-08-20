# Design a Sword class
class Sword
	attr_reader :location :type
	attr_accessor :date

# Initialize a new instance of the class
	# Write three attributes using at least two data types
	# Make sure they vary from instance to instances
def initialize
	# 1) Type of material
	@type = type
	# 2) Manufactured location
	@location = location
	# 3) Date manufactured
	@date = date
end

 # Write at least three methods, at least one takes an argument
 	# 1) Lights up at night
 	def light_up(false)
 	end
 	# 2) Extends in length
 	def extend(true)
 	end
 	# 3) Folds into pocket size
 	def fold
 		puts "Folding initated. *zip zip*"
 	end
end