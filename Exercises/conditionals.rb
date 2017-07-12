


puts "I am positive" if "hello"
puts "I am positive" if 24
puts "I am negative" unless nil
puts "I am negative" unless false

=begin

####: if conditions

age = 22

if age >= 21
  puts "Welcome to the party"
elsif age >=20
  puts "almost there... "
else
  puts "Not yet"
end

## unless = !

unless age < 21
  puts "welcome to the party again!"
end

#### for loops

for number in 1..15
  if number % 3 == 0 && number % 5 == 0
    3.times { print "FizzBuzz ",  number, "! \n"}
  elsif number % 3 == 0
    puts "Fizz"
  elsif number % 5 == 0
    puts "Buzz"
  end
end
=end
