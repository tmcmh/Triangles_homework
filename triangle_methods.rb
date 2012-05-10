# given the two sides of a right triangle, return the hypotenuse
# using the Pythagorean theorem

def hypotenuse_length(side_1, side_2)
	length = (side_1**2 + side_2**2)**0.5
	return length	# this isn't strictly necessary but makes it more readable
end

def triangle_area(side_1,side_2)
	area = (side_1 * side_2)/2
	return area
end

def triangle_color(triangle)
	return triangle[:color]
end

