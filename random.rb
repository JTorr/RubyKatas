#Setting 4 variables to empty arrays
stored_values, unseeded_values, seeded_values, seeded_values_again = [], [], [], []

#Creating and storing a list of random numbers
srand(1234)
for i in 1..10
  stored_values << rand(10)
end

#Creating a list of random numbers without referencing the stored list
for i in 1..10
  unseeded_values << rand(10)
end

#Using the stored list to create a list of random numbers that matches the previous list
srand(1234)
for i in 1..10
  seeded_values << rand(10)
end

#Doing it again to illustrate that the list can be used multiple times
srand(1234)
for i in 1..10
  seeded_values_again << rand(10)
end


puts "Storing list of random numbers:"
puts stored_values.join(", ")

puts "A list of random numbers without calling the seeded values:"
puts unseeded_values.join(", ")

puts "Calling the seeded list of random values:"
puts seeded_values.join(", ")

puts "And calling them again:"
puts seeded_values_again.join(", ")

puts "srand(1234) stores the value and calling srand(1234) again ensures you get the same values" if stored_values == seeded_values
puts "Seeded values can be called as many times as needed" if stored_values == seeded_values_again
