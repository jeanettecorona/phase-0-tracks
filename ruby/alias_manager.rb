
secret_agent = {}

# Ask the use for their real name
p "What is your birth name? Type 'quit' to exit."
	loop do 
		full_name = gets.chomp
		break if full_name == 'quit'

		transformation = full_name.split(' ')

# Swap the first and last name
		transformation[0], transformation[1] = transformation[1], transformation[0]
		new_full_name = transformation.join(' ')

# Split the letters 
		chars = new_full_name.split('')

# Identify the vowels and consonants
# Is it better to do a loop here or identify be ordinal integers? 
		vowels = ['a','A','e','E','i','I','o','O','u','U']
		cons =['b','B','c','C','d','D','f','F','g','G','h','H','j','J','k','K','l','L','m','M','n','N','p','P','q','Q','r','R','s','S','t','T','v','V','w','W','x','X','y','Y','z','Z']

# Change all of the vowels to the next vowel in 'aeiou',
		chars.map! do |char| 
			if vowels.include? char
				move_to_next_v = vowels.index(char) + 2
				new_vowel = vowels[move_to_next_v]
				vowel = new_vowel
			elsif
				cons.include? char
				move_to_next_c = cons.index(char) + 2
				new_cons = cons[move_to_next_c]
				cons = new_cons
			end
		end
		joined = chars.join
		p joined
		secret_agent[full_name] = joined
	end
	secret_agent.each do |agent, real| 
		puts "#{agent} is actually #{real}."
end
