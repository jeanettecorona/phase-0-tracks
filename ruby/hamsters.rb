puts "What is the hamster's name?"

name = gets.chomp

puts "Volume level (1-10)"

volume = gets.chomp

if volume.is_a? String
  volume = volume.to_i
else
end

puts "Fur color"

furcolor = gets.chomp

puts "Good candidate for adoption? (y/n)"

candidate = gets.chomp

puts "Estimated age?"

age = gets.chomp

if age.is_a? String
  age = age.to_i
  
elsif age == ""
  age = nil
  
else
end

puts age
puts volume