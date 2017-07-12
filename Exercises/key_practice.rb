
=begin
def method_name

  x = {"first_name" => "Coding", "last_name" => "Dojo"}
  puts x["first_name"]
  puts x["last_name"]
  puts "Your last name is 'Dojo'" if x["last_name"].eql? "Dojo"


y = {:first_name => "Coding", :last_name => "Dojo" }
puts
print "Y = ",  y
puts
puts "Deleting first name..."
y.delete(:first_name)

print "Y = ", y


end

def users
  newuser = {:first_name => "Coding", :last_name => "Dojo"}
  newuser.delete(:last_name)
  print newuser # => {:first_name => "Coding"}
end

users
method_name
=end

# Important functions...
#.empty? => returns true if hash contains no key-value pairs
#.has_key?(key) => true or false
#.has_value?(value) => true or false




def new_user greeting="Welcome", first_name: "first", last_name: "last"
    puts "#{greeting}, #{first_name} #{last_name}"
end
our_user = {first_name: "Oscar", last_name: "Vazquez"}
new_user                  # => Welcome, first last
new_user "Hello", our_user # => Hello, Oscar Vazquez




















#
