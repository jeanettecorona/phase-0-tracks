puts "What is the hamster's name?"

name = gets.chomp

puts "Volume level (1-10)"

volume = gets.chomp.to_i

if volume == 0
  volume = nil
else
end

puts "Fur color"

furcolor = gets.chomp

puts "Good candidate for adoption? (y/n)"

candidate = gets.chomp

puts "Estimated age?"

age = gets.chomp.to_i

if age == 0
  age = nil
else
end

puts "Hamster Name: #{name}"
puts "Volume Level: #{volume}"
puts "Fur Color: #{furcolor}"
puts "Candidate For Adoption: #{candidate}"
puts "Hamster Age: #{age}"