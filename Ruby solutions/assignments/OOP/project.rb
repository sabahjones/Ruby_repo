

class Project
  attr_accessor :name, :description # your code here
  def initialize name, description
    @name = name
    @description = description
  end
  def elevator_pitch
    print @name, ", ", @description
    puts
  end
end


project1 = Project.new("Project 1", "Description 1")
puts project1.name # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"
