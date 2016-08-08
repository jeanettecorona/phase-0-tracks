# Virus Predictor

# I worked on this challenge [by myself, with: Angelica Pilarca].
# We spent about 2 hours on this challenge.

# EXPLANATION OF require_relative
# require relative allows you to access files in the current directory
# no absolute paths that can be affected with moving.
# require has pre defined paths to seaerch
require_relative 'state_data'

class VirusPredictor
  #for every new instance created will store data given for each instance
  #variable
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #calls private methods within class

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #following methods cannot be called because they are private
  #predicts deaths based on population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    multiplier = 0
    
    if @population_density >= 200
     multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end
    number_of_deaths = (@population * multiplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #method calculates how quickly the virus will spread
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each {|go, value| VirusPredictor.new(go, STATE_DATA[go][:population_density], STATE_DATA[go][:population]).virus_effects}



#=======================================================================
# Reflection Section
# The difference in the hashes shown is that the outer hash has strings 
# and the innter hash uses symbols. 

# Require relative is used to reference another file within the 
# same directory, require is used to access a specific path to a file
# not necessarily in the same directory.

# One way to iterate through a hash is to use the each method.
# Another way to iterate through a hash is to use a loop.

# When refactoring what stood out to me about the variables is that
# you do not need to repeat the variables used. You can simply call the method. 

# I most solidified how to loop hashes. 



