# J.Co's Interior Design
# BASIC INFORMATION FOR CLIENT

basic_info = {}

# Prompt the designer/user for information

puts "Welcome to J.Co's Interior Design!"

puts "Enter client's full name."
basic_info[:name] = gets.chomp

puts "Enter client's age."
basic_info[:age] = gets.chomp.to_i

puts "How much children does the client have?"
basic_info[:num_children] = gets.chomp.to_i

puts "What kind of theme does the client prefer?"
basic_info[:decor_theme] = gets.chomp

puts "Does the client like floral patterns? (Y or N)"
basic_info[:likes_floral] = gets.chomp.downcase
	

# Convert any user input to the appropriate data type

# Print the hash back out to the screen when 
# the designer has answered all the questions

p basic_info

# Give the user the opportunity to update a key 
# (no need to loop, once is fine). After all, 
# sometimes users make mistakes! 

p "Please review the information and make sure it is correct."

p "Are there any labels you would like to update? (Y or N)"
	update = gets.chomp.downcase

		if update == "y" || update == "yes"
			puts "Which label would you like to edit? ex: name, age, etc."
			new_key = gets.chomp

			puts "How would you like to edit?"
			new_value = gets.chomp
			basic_info[new_key.to_sym] = new_value
		else
			"All information has been entered."
		end

p basic_info
p "Thank you for signing up with J.Co's Interior Design!"

# (Hint: Strings have methods that will turn them 
# into symbols, which would be quite handy here.) 
# You can assume the user will correctly input a key 
# that exists in your hash -- no need to handle user errors.

# Print the latest version of the hash, and exit the pseudocode.
