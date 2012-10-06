# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  array = [a,b,c]
  array.sort!
  if array[0]+array[1]<=array[2]
  	raise TriangleError.new('bla')
  end
  if array[0]<=0
  	raise TriangleError.new
  end

  if array[0] == array[1] and array[1] == array[2] 
  	return :equilateral
  end
  if array[0] == array[1] or array[1]==array[2]
  	return :isosceles
  end
  :scalene
  
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
