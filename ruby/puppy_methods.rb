class Puppy

	def initialize
		puts "Initializing new puppy instance..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(i)
  	puts "Woof! " * i		
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(i)
  	dog_years = i * 7
  	p dog_years
  end

  def lick(object)
  	puts "I licked your #{object}!"
  end
end

puppy = Puppy.new

puppy.fetch("chew bone")
puppy.speak(5)
puppy.roll_over
puppy.dog_years(2)
puppy.lick("cheek")


class Chores

	def initialize
		puts "Initializing new chore instance..."
	end

	def sweep(location)
		puts "Sweep the #{location}."
	end

	def dust(object)
		puts "Dust the #{object}."
	end

end

chores = []

50.times do |i|
	chore = Chores.new
	chores << chore
end

chores.each do |chore|
	chore.sweep("bathroom")
	chore.dust("cabinet")
end


chore = Chores.new
chore.sweep("bathroom")
chore.dust("cabinet")
