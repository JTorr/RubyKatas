nums = []

for i in 0..99
  nums[i] = (rand() * 100).to_i
end

even = lambda { |num| num % 2 == 0 }
sum = lambda { |a, b| a + b }
puts nums.select(&even).reduce(&sum)
