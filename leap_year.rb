puts "Enter starting year: "
start_year = gets.chomp
puts "Enter ending year: "
end_year = gets.chomp
year_range = (start_year..end_year).to_a
leap_years = []

def divisible_by_four?(year)
  year % 4 == 0
end

def divisible_by_one_hundred?(year)
  year.to_i % 100 == 0
end

def divisible_by_four_hundred?(year)
  year.to_i % 400 == 0
end

def leap_year?(year)
  divisible_by_four_hundred?(year.to_i) || (divisible_by_four?(year.to_i) && !divisible_by_one_hundred?(year.to_i))
end

leap_years = year_range.select {|year| leap_year?(year) }

puts leap_years.join(", ")
  
