

#function - no parameters ==> function hello_world (){}

def hello_world
  puts "hello world"
end

hello_world #invokes method/function

#function with 2 parameters.
def say_hello name1 = "plain", name2 = "Jane", name3
  unless (name1 == "plain" && name2 == "Jane")
    puts "hello #{name1}, #{name2}, and #{name3}"
  end
  if (name1 == "plain" && name2 == "Jane")
    puts "hello #{name1} #{name2}"
  end
  #  if name1 = "plain" && name2 = "Jane"
#   puts "hello #{name1} #{name2}"
#  end
end

say_hello "j", 2
say_hello "plain", "jane"
say_hello
say_hello "Rick"
