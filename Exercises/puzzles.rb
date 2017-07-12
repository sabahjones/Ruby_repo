=begin
array = [3,5,1,2,7,9,8,13,25,32]

def puzzle1 arr
  puts "sum of array values is #{arr.reduce(:+)}"
  plus_ten = arr.reject { |index| index < 10 }
  puts "values above ten in array are: #{plus_ten}"
end
puzzle1 array

puts
people = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

def puzzle2 arr
  puts "people in array #{arr.shuffle}"
  puts "names longer than 5 characters are #{arr.reject { |index| index.length < 5 }}"
end
puzzle2 people

puts

def puzzle3
  vowels = ["a", "e", "i", "o", "u"]
  a = ("a".."z").to_a
  shuffled = a.shuffle
  print shuffled
  puts
  puts shuffled.first
  puts shuffled.last
  puts "*** message: A vowel is first in shuffled array!!! ***" if vowels.include?(shuffled.first)
end

puzzle3


def puzzle4
  numbers = (55..100).shuffle.to_a
  print numbers
  random = rand(45) + 54
  puts random
end

def puzzle4 array
  10.times { array.push(rand(55..100)) }
end

array = []
puzzle4 array
puts array

def puzzle5 array
  10.times { array.push(rand(55..100)) }
  array.sort!
end

array = []
puzzle5 array
puts array

#puzzle 6 & 7

def puzzle6
  string_array = ""
  10.times do
    str = ""
    5.times { str << rand(65..90).chr }
    string_array << str
    puts string_array
    string_array = ""
    end
end

=end
