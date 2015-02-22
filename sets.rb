require 'set'

colors1 = Set.new([ :red, :green, :blue ])
colors2 = [ :yellow, :brown, :red ].to_set
union = colors1 | colors2
intersect = colors1 & colors2
subtract = colors1 - colors2
non_intersect = colors1 ^ colors2


puts "Set 1: #{colors1.inspect}"
puts "Set 2: #{colors2.inspect}"

puts "Union of sets: #{union.inspect}"
puts "Intersection of sets: #{intersect.inspect}"
puts "Remove items that are in Set2 from Set1: #{subtract.inspect}"
puts "Items present in one but not both sets: #{non_intersect.inspect}"
