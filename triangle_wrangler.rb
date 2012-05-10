require 'triangle_data'
require 'triangle_methods'

puts "\e[H\e[2J"	# yeah, this clears the screen, but only God knows why
					# one of the things I learned on the Internet

puts "clearing my throat - am I really connecting to the right other files from here?"
puts hypotenuse_length(TRIANGLES[3][:side_1_length],TRIANGLES[3][:side_2_length])

puts "\n"
puts "Hypotenii of many triangles"
TRIANGLES.each {|triangle| puts hypotenuse_length(triangle[:side_1_length],triangle[:side_2_length])}

puts "\n"
puts "Areae of many triangles"
TRIANGLES.each {|triangle| puts triangle_area(triangle[:side_1_length],triangle[:side_2_length])}

puts "\n"
puts "Colorii of many triangles, in the order they are stored"
TRIANGLES.each {|triangle| puts triangle_color(triangle)}

puts "\n"
puts "collect the hypotenii"
puts TRIANGLES.collect {|triangle| hypotenuse_length(triangle[:side_1_length],triangle[:side_2_length])}

puts "\n"
puts "sort_by the triangles by length of hypotenuse"
puts TRIANGLES.sort_by {|triangle| hypotenuse_length(triangle[:side_1_length],triangle[:side_2_length])}

puts "\n"
puts "sort_by the triangles by area"
puts TRIANGLES.sort_by {|triangle| triangle_area(triangle[:side_1_length],triangle[:side_2_length])}

puts "\n"
puts "Let's pretty that up"
(TRIANGLES.sort_by {|triangle| triangle_area(triangle[:side_1_length],triangle[:side_2_length])}).each do
	|triangle|
	puts "this is " + triangle[:color]
end
