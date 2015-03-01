class Vector
  def initialize(data)
    @data = data
  end

  def * (num)
    @data.map { |n| n * num }
  end
end

puts Vector.new([3,4,5]) * 5
