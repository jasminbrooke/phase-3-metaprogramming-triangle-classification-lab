class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    raise TriangleError if @a <= 0 || @b <= 0 || @c <= 0
    raise TriangleError if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
    return :equilateral if @a == @b && @a == @c
    return :isosceles if @a == @b || @a == @c || @b == @c

    :scalene
  end

  class TriangleError < StandardError
  end
  
end
