module Shout
  def yell_angrily(words)
    words + "!!!" + " :/"
  end
end

class Teenager
	include Shout
end

class Old_Folk
	include Shout

end

teenager = Teenager.new
p teenager.yell_angrily("Leave me alone")

old_folk = Old_Folk.new
p old_folk.yell_angrily("Get off my lawn")



# module Shout
# 	def self.yell_angrily(words)
# 	    words + "!!!" + " :("
# 	end	

# 	def self.yelling_happily(words)
# 	    words + "!!!" + " :D"
# 	end


# # end

# Shout.yell_angrily("I'm HANGRY")
# Shout.yelling_happily("Thanks for feeding me").upcase