


=begin
a = %w{cat dog bear}

puts a.values_at(1,2).join(" and ")
puts a.values_at(1)
=end

a = ["matz", "Guido", "Dojo", "Choi", "Friar John"]
b = [5, 6, 9, 3, 1, 2, 4]

#at, values_at and fetch
print a.at(3) # prints at a specific spot in an array/index. no error message if you ask for an index out of range.
puts
puts a.fetch(7, "fetch error message here!") #fetch does the same things as at(), but errors out if you request an out of range index. Pass a 2nd parameter to server as a default error value or message
print a.values_at(0,2) #values_at() returns an array vs. a single value like at() // puts breaks the array, using print here.
puts
print b.values_at(0..2).join('-') #join seems to overwrite the array format that values_at typically returns.

#delete
a.delete("Choi") #removes specific value from the array
b.delete(9) #same as above, only one value at a time.
b.delete(10) #this value does not exist for delete.. does not return error message
var = b.delete("10"){ "not found" } #"not found" is now the default error message for delete function.

#delete_at - deletes using index values.
deleted_value = a.delete_at(0) # delete_at will return the value it deleted. you can assign it to a seperate variable.
puts
print a
puts
puts "deleted value is = " + deleted_value

print b
puts
puts "error message created for delete ==> " + var

puts b.class
puts "shuffle()'d array " + b.shuffle.join(" - ")
puts "array with joins " + b.join(" - ")

#length
length = b.length
puts b.length #refuses to print with any text ##fixed below!
puts "length of b array = " + length.to_s  # had to use to_s...
puts "length of b array = #{b.length}" # best way to do this.
puts "length of b array = #{length}" #interpolation avoids having to use .to_s()


#reverse
puts "reversed joined array " + b.join(" - ").reverse
print "this text won't print on the same line as reverse_each "
b.reverse_each { |i| print i, " * " } #block reverse use... won't include string.
#print "reverse names array ", a.reverse
#puts
#puts "index 0 in reverse()'d = " + a[0].reverse #neat.. reverses a string element when explicitly referenced.


#using .sort (with fresh arrays ;-)

a = ["matz", "Guido", "Dojo", "Choi", "Friar John"]
b = [5, 6, 9, 3, 1, 2, 4]

puts
puts
puts "***** using .sort"
puts "sorted 'a' array = #{a.sort}" #sorts string array alphabetically
puts "sorted 'b' array = #{b.sort}" #sorts numeric string as expected.
print "test " + a.sort { |x,y| y<=>x }.to_s #had to convert array to string with .to_s


#using .slice

a = ["matz", "Guido", "Dojo", "Choi", "Friar John"]
b = [5, 6, 9, 3, 1, 2, 4]

puts
puts
puts "#using slice & slice!"
slice1 = a.slice(0)
slice2 = a.slice(1)
slice_negative = a.slice(-1)    #slice -1 will begin interation from last element in array.
slice_negative2 = a.slice(-2)   #slice -2 will reference 2nd to last value in array.
slice_section = b.slice(2..5)   #will slice index[2] through index[5] in this array = [9,3,1,2]
test_slice = a.slice(-10)       # this index does not exist, but no error message returned
puts slice1, slice2
puts "slice negative = " + slice_negative
puts "slice negative2 = " + slice_negative2

puts test_slice                 #returns nothing on index error
print a                         ## shows that slice will not delete the element. but "slice!" will.
puts
print "slice_section = #{slice_section}" #+ slice_section.to_s better to print with interpolation into string
puts

#slice! below

slice1 = a.slice!(0)
slice2 = a.slice!(0) #have to re-"slice!" at index 0 since previous 0 was removed.
puts slice1, slice2
print a
puts

#using insert()
puts
puts "using insert"
a = ["matz", "Guido", "Dojo", "Choi", "Friar John"]
b = [5, 6, 9, 3, 1, 2, 4]
a.insert(1, "Johnson")            # will insert value "Johnson" at index 1. --> .insert(index, value)
print a



#
