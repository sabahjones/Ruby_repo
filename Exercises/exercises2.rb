

=begin
x = 5
y = 10
z = x * y

puts z

first_name = "Michael"
last_name = "Choi"

puts "Your name is "+first_name+" "+last_name

puts "Your name is #{first_name} #{last_name}"

puts "Your name is %s %s" % [first_name, last_name]

x = "CodingDojo"

puts x.include?("dojo")
puts x.capitalize.include?("dojo")

puts  x.capitalize + ": this word includes dojo" if x.capitalize.include? "dojo"
puts x + ": this word does not include Dojo" if !x.include? "dojo"

puts "Testing loop x 2 \n" * 2

puts "I am an instance of".class     ####.class method will return type.

puts "Chunky" << "Bacon"              #### i guess << puts things together?

puts "24 plus 8 is #{24 + 8}"
puts '24 plus 8 is #{24 + 8}'         #### single quotes don't allow for interpolation to run
puts "24 plus 8 is " + (24 + 8).to_s  # to_s?
=end

print "oscar@gmail.com".split("@")
puts
puts "oscar@gmail.com".split("@")[1]  #### Split will split the string central to the value in method, "@" in this case.
puts
print"hello".split("")





#
