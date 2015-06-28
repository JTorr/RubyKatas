def triangle(*sides)
  sides = *sides.sort!
  sides.map { |side|  raise TriangleError if side <= 0 }
  side1, side2, side3 = *sides

  if side1 + side2 <= side3
    raise TriangleError
  elsif  (side1 == side2) && (side2 == side3)
    return :equilateral
  elsif (side1 == side2) || (side2 == side3) || (side3 == side1)
    return :isosceles
  else
    return :scalene
  end
end

class TriangleError < StandardError
end
