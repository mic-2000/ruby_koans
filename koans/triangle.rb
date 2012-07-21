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
  # WRITE THIS CODE

  if a<=0 or b<=0 or c<=0
    raise TriangleError, "side must be > 0"
  end

  if a+b<=c or a+c<=b or c+b<=a
    raise TriangleError, "sum two side must be >3 side"
  end  

  if a==b and a==c 
   	return :equilateral
  end
  if a==b or a==c or b==c 
  	return :isosceles 
  end
  if a!=b and a!=c and b!=c
  	return :scalene 
  end


end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
