class NumberTransformer
  include Enumerable
  
  def self.multiply_by_ten(array)
    array.collect { |x| x * 10 }
  end

  def self.divisible_by_3(array)
    i = 0
    booleans = array.collect{ |x| x % 3 == 0 }
    booleans.collect{ |bool| i += 1 if bool == true }
    return i
  end
  
  def self.count_divisible_by_3(array)
    array.count { |x| x % 3 == 0 }
  end

  def self.sum_cycle(array)
    array.cycle(3) { |x| puts x += x }
  end
end

puts NumberTransformer.divisible_by_3((1..12).to_a) 
puts NumberTransformer.multiply_by_ten((1..9).to_a)
puts NumberTransformer.count_divisible_by_3((1..12).to_a)
puts NumberTransformer.divisible_by_3((1..12).to_a) == NumberTransformer.count_divisible_by_3((1..12).to_a)
NumberTransformer.sum_cycle((1..12).to_a)
