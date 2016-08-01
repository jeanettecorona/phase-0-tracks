module Shout
	def self.yell_angrily(words)
	    words + "!!!" + " :("
	end	

	def self.yelling_happily(words)
	    words + "!!!" + " :D"
	end


end

Shout.yell_angrily("I'm HANGRY")
Shout.yelling_happily("Thanks for feeding me").upcase