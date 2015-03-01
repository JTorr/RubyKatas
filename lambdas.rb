nums = []

for i in 0..99
  nums[i] = (rand() * 100).to_i
end

#nums.select { |num| num % 2 == 0 }

even = lambda { |num| num % 2 == 0 }
odd = lambda { |num| num % 2 != 0 }
divisible_by_3 = lambda { |num| num % 3 == 0 }
divisible_by_5 = lambda { |num| num % 5 == 0 }

rand = rand(1..5)
if divisible_by_5.call(rand)
  puts "Multiples of 5: "
  puts nums.select(&divisible_by_5).join(", ")
elsif divisible_by_3.call(rand)
  puts "Multiples of 3: "
  puts nums.select(&divisible_by_3).join(", ")
elsif even.call(rand)
  puts "Even numbers:"
  puts nums.select(&even).join(", ")
else
  puts "Odd numbers:"
  puts nums.select(&odd).join(", ")
end
