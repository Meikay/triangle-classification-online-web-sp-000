require 'pry'
class Triangle

  def initialize(a, b, c)
    @triangle_sides = []
    @a = a
    @b = b
    @c = c
  end

  def valid? #validate if it's a triangle
    #if triangle_sides = (0, 0, 0) => raise TriangleError
    #if triangle_sides = (3, 5, -2) => raise TriangleError
    #if triangle_sides = (certain inequalities) => TriangleError
    sum_one = @a + @b
    sum_two = @a + @c 
    sum_three = @b + @c 

    if (@triangle_sides.none? {|side| side <= 0}) && (sum_one > @c && sum_two > @b && sum_three > @a)
  end

  def kind#check for the the side measurements and then return its type as a string
    if (@a == @b) && (@a == @c)
      :equilateral
    elsif (@a == @b) || (@a == @c) || (@b == @c)
      :isosceles
    else
      :scalene
    end
  end
  class TriangleError < StandardError

  end
end
