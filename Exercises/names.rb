a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]

def names_function array
  puts "length of array is #{array.length}"
  print "Names are: "
  index = 0
  for name in array
    index = index + 1
    if (index == array.length)
      print "and #{name[:first_name]} #{name[:last_name]}"
    else
      print "#{name[:first_name]} #{name[:last_name]}, "
    end
  end
end

names_function names
