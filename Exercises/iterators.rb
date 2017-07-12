
a = ["matz", "Guido", "Dojo", "Choi", "Friar John"]
b = [5, 6, 9, 3, 1, 2, 4]
c = [1, 2, 3, 4, 5]

puts "Ruby iterators"
# .any?
puts a.any? { |i| i.length > 5 }          # = do any values in array a have a length > 5 (true)
puts a.any? { |i| i.length > 15 }         # = do any values in array a have a length > 15 (false)
#  "i" above is just a placeholder.
puts a.any? { |word| word.length > 5 }

# .each
c.each { |i| print i, "-" }               #similar to join
puts                                      #needed line break.
c.each { |i| print i * 5 - 2, " "}
puts

# .collect
x = c.collect { |num| num * num }         #similar to each but returns an array "collect"
print x
puts

# .detect/.find
message = ""
msgarray = []

a.detect { |i| print "detected #{i}" if i == "Dojo" }           #detect will look for a matching value
puts
b.detect { |i| puts "#{i} is divisible by 2" if i % 2 == 0 }    #returns multiple values (since it's operating on an array?)
puts
b.detect { |i| message = "#{i} is divisible by 2" if i % 2 == 0 } #only stores last value
print message
puts

print (1..100).detect { |i| i % 5 == 0 and i % 7 == 0 } # returns first value that meets these conditions, then breaks

# .findall()
puts
print (1..45).find_all { |index| index % 5 == 0 and index % 3 == 0 }


# .reject()
puts
print (1..10).reject { |i| i % 2 == 0 } # will return all odd numbers in this range (in an array)

# .upto()
puts
5.upto(10) { |i| print i, "  " }








#
