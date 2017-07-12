
#1
(1..255).each { |x| print x, ", "}
puts


#2
(1..255).each { |x| print x , ", " if x % 2 == 1 }
puts


#3
def print_and_add
  sum = 0
  (0..255).each  { |x| print "New number: #{x}, Sum: #{sum += x}\n" }
end
print_and_add
puts

#arrays :-)
x = [1, 3, 5, 7, 9, 13]
y = [-1, -200, -5]


#4
#x.each { |x| print "#{x} "}                #two ways - #1 iterate
print x.join(", ")                          #2 .join (cleaner)
puts
puts

#5
def find_max array
  puts "Max value in array is: " + array.max.to_s
end
find_max y
find_max x
puts


#6
def print_avg array
  sum = 0
  array.each { |x| sum += x }
  puts "average of your array is #{sum/array.length}"
end
print_avg x
print_avg y
puts


#7
def make_odd_array arr
  i = 0
  index = 0
  while i <= 255
    arr.push(i) if i % 2 == 1
    i += 1
  end
end

odd_arr = []
make_odd_array(odd_arr)

puts "odd array = #{odd_arr}"
puts

#8 - greater than y
def greater_than arr, value
  counter = 0
  arr.each { |i| counter +=1 if i > value }
  print "#{counter} items in array are greater than #{value}"
end

greater_than x, 5
puts
puts

z = [1, 2, 3, 4]

#9 Square the values
def square_arr arr
  arr.map! { |i| i = i*i }             #had to use .map! to overwrite existing array values
end
print square_arr z
puts
puts


#10 Eliminate Negative Numbers

def remove_negatives arr
  newarr = []
  for i in arr
    newarr.push(i) if i > 0
  end
  arr.replace(newarr)
  print arr
end

q = [ -3, -4, -2, -1, 1, 2 ]
remove_negatives q
puts
puts


#11 Max, Min, and Average
def min_max_avg arr
  #puts "max value is " + arr.max.to_s
  #puts "min value is " + arr.min.to_s
  total = arr.inject(0){|sum,x| sum + x }
  #puts "average value is " + (total/arr.length).to_s
  newarr = []
  newarr.push(arr.max)
  newarr.push(arr.min)
  newarr.push(total/arr.length)
end

arv = [1, 2, 3, 4, 5]
hash = min_max_avg(arv)
print "Max, min, and average of array is " + hash.to_s
puts
puts


#12 Shifting the Values in the Array
def shift_array arr
  arr.shift
  arr.push(0)
end

shifty = [3, 4, 2, 1]
shift_array shifty
print "Shifted array = " + shifty.to_s
puts
puts

#13 Number to String
def num_to_string arr
  newarr = []
  for i in arr
    newarr.push("Dojo") if i < 0
    newarr.push(i) if i >= 0
  end
  arr.replace(newarr)

end

dojoarray = [-2, -3, 1]
num_to_string(dojoarray)
print dojoarray










#
