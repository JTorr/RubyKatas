#Setting 4 variables to empty arrays
unseeded_values, seeded_values, seeded_values_again = [], [], [] 

#Creating a list of random numbers based on given seed number 
srand(1234)
for i in 1..10
  seeded_values << rand(10)
end

#Creating a list of random numbers without providing a seed number 
for i in 1..10
  unseeded_values << rand(10)
end

#Creating the same list of "random" values by using the same seed number
srand(1234)
for i in 1..10
  seeded_values_again << rand(10)
end


puts "A list of values based on the seed number: "
puts seeded_values.join(", ")

puts "A list of random numbers without calling the seeded values:"
puts unseeded_values.join(", ")

puts "Using the same seed number"
puts seeded_values_again.join(", ")

