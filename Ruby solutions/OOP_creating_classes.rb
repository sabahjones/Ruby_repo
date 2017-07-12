
# 1. Creating a class is simple

class User
end

# with this you can add new objects;

u = User.new
puts "this is my new item in my new class", u

# but right now it's an object without any attributes. (see puts statement in console log)


# 2. Adding an attributes is simple as well: (must use @ to declare variable)

#class Users
#  @first_name
#end

# but this attribute needs a "setter" in order to perform the operation below;

#new = User.new
#new.first_name = "mike"

# 3. Adding a setter method/function inside the class will allow us to set values

class Users1
  def first_name=(name)
    @first_name = name
  end
end

new = Users1.new
new.first_name = "Mike"

# 4. this works for assigning values, but another method, a "Getter" is required to RETRIEVE values from new items in this class.

class Users1
  def first_name
    return @first_name
  end
end


puts "first name of new user is #{new.first_name}"

# 5. altogether this basic user function looks like this:

class Users2
  def first_name=(name)
    @first_name = name
  end
  def first_name
    return @first_name
  end
end

new2 = Users2.new
new2.first_name = "John"
puts "2nd user name is #{new2.first_name}"


# 6. We can shorten the above function immensely using "attr_writer" and "attr_reader", referred to as "syntax sugar"

class Car
  attr_writer :model
  attr_reader :model
end

# this will create a "getter" and "setter" exactly as the Users2 function for key "model"

ferrari = Car.new
ferrari.model = 458
puts "this ferrari model is a #{ferrari.model}"

# 7. ******* You can shorten this function EVEN MORE using this attr_accessor syntax:

class Car2
  attr_accessor :model
end

# this single line will create the entire getter and setter function

toyota = Car2.new
toyota.model = "camry"
puts "that Toyota is a #{toyota.model}"


# 8. Initialize method in a class allows us to create users more easily

class Player
  attr_accessor :first_name, :last_name
end

kobe = Player.new
kobe.first_name = "Kobe"
kobe.last_name = "Bryant"
puts "#{kobe.first_name} #{kobe.last_name} is overrated!"

# versus

class Player2
  attr_accessor :first_name, :last_name, :number
  def initialize(f_name, l_name, num)                     #must be lower case
    @first_name = f_name
    @last_name = l_name
    @number = num
  end
end

player = Player2.new("Michael", "Jordan", 23)           #this allows us to truncate the creation line.
puts "#{player.first_name} #{player.last_name} wore ##{player.number}"

















#
