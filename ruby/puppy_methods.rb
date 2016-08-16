# class Puppy

#   def initialize
#     puts "Initializing puppy instance..."
#   end

#   def fetch
#     puts "*fetches ball*"
#   end

#   def speak(int)
#     puts "Woof! " * int 
#   end

#   def roll_over
#     puts "*rolls over*"
#   end

#   def dog_years(int)
#     years = int * 7
#     puts "You are #{years} years old!"
#   end

#   def cuddle
#     puts "*snuggles*"
#   end

# end

# # Driver Code
# puppy = Puppy.new
# puppy.fetch
# puppy.speak(3)
# puppy.roll_over
# puppy.dog_years(3)
# puppy.cuddle

class Guess

  def initialize
    puts "Initializing Guessing Game..."
  end

  def pick_num
    num = rand(50)
    puts "*picks a number 1-50: #{num}*"
  end

  def cheer
    puts "Hooray!"
  end

end

guesses = []

50.times do
guess = Guess.new
guesses << guess
# guess.pick_num
# guess.cheer
end

# Same as lines 60-61
guesses.each do |num| 
  num.pick_num
  num.cheer
end