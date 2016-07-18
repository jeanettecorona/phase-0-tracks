
# NEW EMPLOYEE INTERVIEW - WEREFOLF, INC

# Ask how many employees will be processed

puts "How many employees will be processed?"
	employees = gets.to_i

# Ask questions
while employees > 0
puts "What is your name?"
	name = gets.chomp

puts "How old are you?"
	age = gets.to_i

puts "What year were you born?"
	year = gets.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
	health_insurance = gets.chomp

	if name == "Drake Cula" || name == "Tu Fang"
		is_vampire = true
	else
		is_vampire = false
	end

	if 2016 - year != age
		wrong_age = true
	else
		wrong_age = false
	end

	if garlic_bread == "yes" || garlic_bread == "y" || garlic_bread == "YES" || garlic_bread == "y"
		likes_garlic_bread = true
	else
		likes_garlic_bread = false
	end

	if health_insurance == "yes" || health_insurance == "y" || health_insurance == "YES" || health_insurance == "y"
		wants_insurance = true
	else
		wants_insurance = false
	end

# Print Results
case
when (likes_garlic_bread || wants_insurance) && !wrong_age
	puts "Probably not a vampire."
when ( !likes_garlic_bread || !wants_insurance) && wrong_age
	puts "Probably a vampire."	
when !likes_garlic_bread && !wants_insurance && !wrong_age
	puts "Almost certainly a vampire."
when is_vampire
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end

employees -= 1
end