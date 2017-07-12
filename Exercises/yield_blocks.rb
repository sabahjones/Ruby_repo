

def square(num)
  puts "num is #{num}"
  puts "yield(num) has a value of #{yield(num)}"
end
square(5) { |i| i * i }

#above line = function_call() + { block_code }



puts

def square2(num)
  x = yield(num)        #2 - passes num parameter to block
  puts "x = #{x}"
  y = yield(x)
  puts "y = #{y}"
end
square2(5) { |i| i*i}   #1 - function call, passes param to function. #3 block receives param back from function
