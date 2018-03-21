class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind

      case
        when (side1 + side2 <= side3) || (side2 + side3 <= side1) || (side3 + side1 <= side2) then raise TriangleError
        when side1 <= 0 || side2 <= 0 || side3 <= 0 then raise TriangleError
        when side1 == side2 && side2 == side3 then :equilateral
        when side1 == side2, side2 == side3 then :isosceles
        when side1 == side3 then :isosceles
        when side1 != side2 && side2 != side3 then :scalene
      end
  end

end

class TriangleError < StandardError
end
