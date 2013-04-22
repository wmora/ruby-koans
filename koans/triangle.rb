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
  [a,b,c].each {|el| raise TriangleError if el <= 0 }	
  if (a == b) && (b == c) 
  	return :equilateral
  elsif (a != b) && (b != c) && (a != c) 
  	return :scalene
  else 
  	triangle = [a,b,c].sort!
  	if (triangle[0] + triangle[1]) > triangle[2]
		return :isosceles   	 
	else 
		raise TriangleError
	end
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
