
class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    array = [side1, side2, side3]

    array.each do |test_side|
      # binding.pry
      if (array.sum - test_side) <= test_side || test_side <= 0
        # binding.pry
        raise TriangleError
        return
      end
    end

    case array.uniq.count
    when 1
      return :equilateral
    when 2
      return :isosceles
    when 3
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "This is an invalid triangle."
    end
  end
end
