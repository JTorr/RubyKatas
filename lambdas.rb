nums = []

for i in 0..99
  nums[i] = (rand() * 100).to_i
end

#nums.select { |num| num % 2 == 0 }

even = lambda { |num| num % 2 == 0 }

puts nums.select(&even).join(", ")
