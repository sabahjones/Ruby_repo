

##### While loop

i = 0
num = 5
begin
  puts "Inside while loop; i = #{i}" unless i == 3
  puts "i is now THREE!" if i == 3
  #break if i == 4
  i += 1
end while i < num

puts "Broke out of the while looop" if i < 5
puts "finished while loop" if i == 5

=begin

#### for loop!
for i in 0..5 # this will include value 5 in it's run, using ... will make it run until 4
  puts "Value of i in for loop = #{i}"
end
=end
