# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

swap = "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
	puts swap

 add_o = "zom".insert(1, 'o')
# => “zoom”
	puts add_o

add_o2 = "zom".replace "zoom"
	puts add_o2

add_space = "enhance".rjust(11, " ").ljust(15, " ")
# => "    enhance    "
	puts add_space

center = "enhance".center(15)
	puts center

uppercase = "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
	puts uppercase 

addword = "the usual".concat(" suspects")
#=> "the usual suspects"
	puts addword

append = "the usual" << " suspects"
	puts append

prepend = " suspects".prepend("the usual")
# => "the usual suspects"
	puts prepend

disappearing_letter = "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
	puts disappearing_letter

missing_first_letter = "The mystery of the missing first letter".slice!(1..-1)
# => "he mystery of the missing first letter"
	puts missing_first_letter

remove_whitespace = "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"
	puts remove_whitespace

 ordinal = "z".ord
# => 122 
# Description: Return the Integer ordinal of a one-character string.
	puts ordinal

# (What is the significance of the number 122 in relation to the character z?)
# The number 122 indicates the decimal representation of the ASCII character 'z'.

count_a = "How many times does the letter 'a' appear in this string?".count("a")
# => 4
	puts count_a
