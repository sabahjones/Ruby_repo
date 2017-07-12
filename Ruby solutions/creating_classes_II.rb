class CodingDojo
  @@no_of_branches = 0                  #Class only variable, not really used commonly
  def initialize(id, name, address)
    @branch_id = id
    @branch_name = name
    @branch_address = address
    @@no_of_branches += 1               #Class variable value accessibly only inside the class
    puts "Created branch ##{@@no_of_branches}"
  end
  def hello
    puts "Hello CodingDojo!"
  end
  def display_all
    puts "Branch ID: #{@branch_id}"
    puts "Branch Name: #{@branch_name}"
    puts "Branch Address: #{@branch_address}"
  end
end

branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale, CA")
branch.display_all
puts
branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston, MA")
branch2.display_all

#puts branch.no_of_branches           #since no_of_branches is a class variable, this will fail.
