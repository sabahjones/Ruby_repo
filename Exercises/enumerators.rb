

def any list
  if  list.any? do
    |word| word.length >=5
    end
    return true
  else
    return false
  end
end

things = ["ant", "bear", "cat"]
boolean = any things
puts boolean
puts


def collect array
  array.collect do |value|
    value*value
  end
end
print collect [2,4,6,8]
puts

#detect

print (1..4).collect { "cat" }
puts
number = (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35
puts number

# => ["cat", "cat", "cat", "cat"]
#(1..4).collect do |i|
#  print i*i, " "
#  end # should => [1, 4, 9, 16]
