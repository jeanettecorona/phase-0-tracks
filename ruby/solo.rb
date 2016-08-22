# Design a Sword class
class Sword
	attr_reader :location, :type
	attr_accessor :case_color

# Initialize a new instance of the class
	# Write three attributes using at least two data types
	# Make sure they vary from instance to instances
def initialize
	# 1) Type of material
	@type = type
	# 2) Manufactured location
	@location = location
	# 3) Case color
	@case_color = case_color
end

 # Write at least three methods, at least one takes an argument
 	# 1) Lights up at night
 	def light_up
 		puts "*FLASH*"
 	end
 	# 2) Extends in length
 	def extend
 		puts "Extension has begun."
 	end
 	# 3) Folds into pocket size
 	def fold
 		puts "Folding initated. *zip zip*"
 	end
end

# User Interface
sword = Sword.new
swords = []
# Welcome the user to the sword program
# Ask them to create a new sword
puts "Hello! Would you like to order a new sword? (Yes or No?)"
	response = gets.chomp
	if response === "Yes" #|| "Y"
		puts "Great. What kind of sword, brass or silver?"
			type_s = gets.chomp.downcase
			if type_s == "brass"
				Sword.new 
				swords << Sword.new
				@type = "brass"
			elsif type_s == "silver"
				Sword.new
				swords << Sword.new
			end
			p swords
	else
		puts "Okay, see you next time!"
	end

puts "Swords ordered: #{swords.length}"
# Ask them what time of attributes they want 
	# Convert their input to appropriate data type
# When user is "done", loop through the array and 
# Print out the attributes of each instance as a confirmation message

