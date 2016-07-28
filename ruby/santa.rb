
# Define Class

class Santa

# Write initialize method
# Gender, which will be a string passed in on initialization
# Ethnicity, which will be a string passed in on initialization

  def initialize(gender, ethinicity)
    puts "Initialize Santa instance ..."
    @gender = gender
    puts "Gender: #{@gender}"
    @ethinicity = ethinicity
    puts "Ethinicity: #{@ethinicity}"
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "Reindeer ranking: #{@reindeer_ranking}"
  end

# Write speak method
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

# Write eat_milk_and_cookies method
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

# Reindeer_ranking, an array of reindeer from most preferred to least preferred. 
  #def reindeer_ranking
    #@reindeer_ranking = reindeer_ranking
    #puts "Reindeer Ranking: #{@reindeer_ranking}"
  #end

# Age, which is not passed in on initialization and defaults to 0

  def reindeer_age(age=0)
    @age = age
    puts "Age: #{@age}"
  end


end

# Check that you're able to initialize a Santa instance and call the methods above
santa = Santa.new("female", "Mexican")
santa.reindeer_age
santa.speak
santa.eat_milk_and_cookies("oatmeal")

santas = []
genders = ["Trans", "Male", "Female", "Thinking about it"] 
ethnicities = ["Windling", "Earthling", "Fireling", "Waterling"]
genders.length.times do |i|
		santas << Santa.new(genders[i], ethnicities[i])
end

#santas = []
#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#example_genders.length.times do |i|
#  santas << Santa.new(example_genders[i], example_ethnicities[i])
#end

