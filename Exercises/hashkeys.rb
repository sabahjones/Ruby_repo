h = {first_name: "Coding", last_name: "Dojo"}
h.delete :last_name
puts h

# .empty? => returns true if hash contains no key-value pairs
h = {}
puts h.empty?

# .has_key?(key) returns true if given key is present
h = {first_name: "Coding", last_name: "Dojo"}
puts h.has_key? :first_name # => true
puts h.has_key? "first_name" # => false

# .has_value?(value) returns true if given value is present for some key
h = {first_name: "Coding", last_name: "Dojo"}
h.has_value? "Coding" # => true
h.has_value? "Bootcamp" # => false

def say_hello greeting = "welcome", first_name: "first", last_name: "last"
  puts "#{greeting}, #{first_name} #{last_name}"
end
say_hello
say_hello h
