
# Define Class

class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

# Write initialize method
# Gender, which will be a string passed in on initialization
# Ethnicity, which will be a string passed in on initialization

  def initialize(gender, ethnicity)
    puts "Initialize Santa instance ..."
    @gender = gender
    puts "Gender: #{@gender}"
    @ethnicity = ethnicity
    puts "Ethnicity: #{@ethnicity}"
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "Reindeer ranking: #{@reindeer_ranking}"
    @age = 0
    puts "Age: #{@age}"
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

  def celebrate_birthday
    @age = @age + 1
    puts "Happy Birthday: #{@age}"
  end

  def get_mad_at(bad_reindeer)
    @bad_reindeer = bad_reindeer
    @reindeer_ranking.delete(bad_reindeer)
    @reindeer_ranking << @bad_reindeer.to_s
      puts "New ranking: #{@reindeer_ranking}"
  end

# Setter to be able to change gender
  def gender=(new_gender)
    @gender = new_gender
  end

# Getter to access age and ethnicity outside of the class
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  end

# Check that you're able to initialize a Santa instance and call the methods above
santa = Santa.new("female", "Mexican")
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

# Add three attribute-changing methods to your Santa class
santa.celebrate_birthday
santa.get_mad_at("Vixen")
puts "Santa is #{santa.age} and #{santa.ethnicity}"



