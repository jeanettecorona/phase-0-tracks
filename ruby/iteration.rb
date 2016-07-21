def blockhead
	puts "Hey blockhead!"
	yield
end

blockhead { puts "Wassup?" }

godfather = ["Vito", "Sonny", "Michael", "Fredo"]
	puts godfather

godfather.each { |character| puts "#{character} is my favorite Godfather character!" }

godfather.map! { |character| character + " Corleone" }
	puts godfather

godfather_actors = {"Vito" => 'Marlon', "Sonny" => 'James', "Michael" => 'Al', "Fredo" => 'John'}
	puts godfather_actors

godfather_actors.each { |character, actor| puts "#{character} was played by #{actor}." }


letters = ["a", "b", "c", "d", "e", "f"]

numbers = {
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four",
	5 => "five",
	6 => "six"
}

# 1. A method that iterates through the items, deleting 
# any that meet a certain condition 
# (for example, deleting any numbers that are less than 5).

puts letters.delete_if { |char| char < "c" }

puts numbers.delete_if { |int, str| int > 4 }


# 2. A method that filters a data structure for 
# only items that do satisfy a certain condition 
# (for example, keeping any numbers that are less than 5).

puts letters.keep_if { |char| char < "f" }

puts numbers.keep_if { |int, str| int > 1 }


# 3. A different method that filters a data structure for only items 
# satisfying a certain condition -- Ruby offers several options!

puts letters.select { |char| char =~ /[bcd]/ }

puts numbers.select { |int, str| int.between?(3, 4) }


# 4. A method that will remove items from a data structure until 
# the condition in the block evaluates to false, 
# then stops (you may not find a perfectly working 
# option for the hash, and that's okay).

# Resetting the hash and array
letters = ["a", "b", "c", "a", "b", "d", "e", "f"]

numbers = {
	1 => "1",
	2 => "2",
	3 => "3",
	4 => "1",
	5 => "2",
	6 => "3"
}

puts letters.drop_while { |char| char < "c" }.to_s

puts numbers.drop_while { |int, str| str < "3" }.to_s

# Using the enumerable method .drop_while on a hash returns
# an array instead of a hash leaving the original intact.


